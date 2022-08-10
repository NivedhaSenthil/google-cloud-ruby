require "google/cloud/spanner"
require "google/cloud/spanner/admin/database"
require "securerandom"

def SecureRandom.int64
  random_bytes(8).unpack1("q")
end

Google::Cloud::Spanner.configure do |config|
  config.quota_project = "span-cloud-testing"
  config.endpoint = "staging-wrenchworks.sandbox.googleapis.com:443"
end
spanner = Google::Cloud::Spanner.new
client  = spanner.client "ruby-test-staging", "pg-test"
# client  = spanner.client "aseering-us-west2", "gsql-test"
# id = SecureRandom.int64
# client.upsert "accounts", { account_id: id, active: true, friends: ["1.2","NAN",nil], reputation: 1.2, username: "asdfdae"}
# results = client.execute_sql "SELECT * FROM accounts WHERE account_id = $1",
#                             params: { p1: id }
# p results.rows.first
# sql_query = "select * from accounts where friends[2] = $1;"
# param_types = { p1: :PG_NUMERIC }
# params      = { p1: BigDecimal("NaN") }
# client.execute(sql_query, params: params, types: param_types).rows.each do |row|
#   puts row
# end

# client.upsert "stuffs", { id: 3, json: {a:"test",b:"test1"} }
results = client.read "stuffs", [:id, :json], keys: 9
p results.rows.first
# sql_query = "SELECT *  FROM accounts1 where num_test=$1"
# param_types = { p1: :PG_NUMERIC }
# params      = { p1: BigDecimal("NaN") }
# client.execute(sql_query, params: params, types: param_types).rows.each do |row|
#   puts row
# end
# client  = spanner.client "aseering-us-west2", "ruby-gsql-test"
# sql_query = "SELECT *  FROM test where nun_test

# require "google/cloud/spanner"
# require "google/cloud/spanner/admin/database"

# # Google::Cloud::Spanner.configure do |config|
# #    config.quota_project  = "span-cloud-testing"
# # end

# database_admin_client = Google::Cloud::Spanner::Admin::Database.database_admin

# db_path = database_admin_client.database_path project: "span-cloud-testing",
#                                               instance: "aseering-us-west2",
#                                               database: "ruby-pg-test"
# db = database_admin_client.get_database name: db_path
# p db

# client.transaction do |tx|
#   tx.batch_update do |b|
#     b.batch_update "INSERT INTO stuffs (id, json) VALUES (9, $1);", params: { p1: {"asdf"=>2353, "test"=>BigDecimal("NaN") } }, types: { p1: :PG_JSONB }
#   end
# end


