# require "google/cloud/pubsub"

# begin
#   pubsub = Google::Cloud::PubSub.new
#   sub = pubsub.subscription "exact-once"
#   # subscriber = sub.listen do |received_message|
#   #   # sleep 120
#   #   p received_message
#   #   received_message.modify_ack_deadline! 120
#   # end
#   # subscriber.on_error do |e|
#   #   p "errorrrrrrrr"
#   #   p e.inspect
#   #   # p "status_code"
#   #   # p e.status_code
#   #   # p "code"
#   #   # p e.code
#   #   # p "header"
#   #   # p e.header
#   #   # p "domain"
#   #   # p e.domain
#   #   # p "class"
#   #   # p e.class.name
#   #   # p "error_metadata"
#   #   # p e.error_metadata
#   #   # p "status_details"
#   #   # p e.status_details
#   #   # p "error_info"
#   #   # p e.error_info
#   #   # p "full_message"
#   #   # p e.full_message
#   #   # p "metadata"
#   #   # p e.metadata
#   # end
#   # subscriber.start
#   # sleep 125
#   # subscriber.stop!
#   # msges = sub.pull
#   # p msges
#   # #   ack_ids = msges.map(&:ack_id)
#   # #   p ack_ids
#   # sleep 62
#   sub.acknowledge "MD5FU0RQBhYsXUZIUTcZCGhRDk9eIz81IChFEgkgbwsvQlwfYmhcXHUHUAUYdHs3JDlSElcIRll-d2sDuNKs-UMHYS85dnRjdm9dFAYFQVJ-XV8cCUCEkZ60h_PySmddTd_g46Q0ZbaPl94pZic9WxJLLD5-LTlFQV5AEkwmDERJUytDCypYEU4EISE-"
# rescue Google::Cloud::InvalidArgumentError => e
#   p "error_metadata"
#   p e.cause.status_details
# end


# # module AcknowledgeStatus
# #   SUCCESS = 1
# #   PERMISSION_DENIED = 2
# #   FAILED_PRECONDITION = 3
# #   INVALID_ACK_ID = 4
# #   OTHER = 5
# # end


# require "google/cloud/pubsub"
# require "securerandom"
# require "faker"
# require "logger"

# module MyLogger
#   LOGGER = Logger.new $stdout, level: Logger::DEBUG
#   def logger
#     LOGGER
#   end
# end

# # Define a gRPC module-level logger method before grpc/logconfig.rb loads.
# module GRPC
#   extend MyLogger
# end

# # Cleanup
# def shut_down subscription, subscriber
#   if subscriber
#     puts "Stopping subscriber: #{subscriber.subscription_name}"
#     subscriber.stop
#     puts "Waiting for subscriber: #{subscriber.subscription_name}"
#     subscriber.wait!
#   end
#   if subscription
#     puts "Deleting subscription: #{subscription.name}"
#     subscription.delete
#     puts "Deleted subscription: #{subscription.name}"
#   end
# end

# $subscriber = nil

# begin
#   pubsub = Google::Cloud::PubSub.new
#   topic_name = ARGV[0]
#   topic = pubsub.topic topic_name
#   raise "Topic not found for ARGV[0]: #{topic_name}" unless topic
#   subscription_name = "#{topic_name}-sub-#{SecureRandom.hex(4)}".downcase
#   $subscription = topic.subscribe subscription_name
#   puts "Created subscription: #{$subscription.name} for topic: #{topic.name}"


#   configuration = {
#     deadline: 10,
#     streams: 2,
#     inventory: {
#       max_outstanding_messages: 80,
#       max_total_lease_duration: 20
#     },
#     threads: { callback: 8, push: 4 }
#   }

#   $subscriber = $subscription.listen **configuration do |received_message|
#     # process message
#     puts "Data: #{received_message.message.data}, published at #{received_message.message.published_at}"
#     received_message.acknowledge!
#   end

#   # Handle exceptions from listener
#   $subscriber.on_error do |exception|
#     puts "Exception: #{exception.class} #{exception.message}"
#   end

#   $subscriber.start
#   loop do
#     sleep 5
#     puts "stream_pool: #{$subscriber.stream_pool.inspect}"
#   end
# ensure
#   shut_down $subscription, $subscriber
# end

# Signal.trap "INT" do
#   shut_down $subscription, $subscriber
#   exit
# end

# Signal.trap "TERM" do
#   shut_down $subscription, $subscriber
#   exit
# end

require "google/cloud/pubsub"
# require "faker"

pubsub = Google::Cloud::PubSub.new
topic_name = ARGV[0]
topic = pubsub.topic topic_name
raise "Topic not found for ARGV[0]: #{topic_name}" unless topic

messages = []
80.times do |n|
  message = {}
  message["id"] = "#{Time.now.to_i}#{n}"
  message["content"] = "Faker::Lorem.paragraph(sentence_count: 10)"
  messages << message.to_json
end

msgs = topic.publish do |batch_publisher|
  messages.each do |message|
    batch_publisher.publish message
  end
end

puts "Published #{msgs.count} messages to topic: #{topic.name}"
