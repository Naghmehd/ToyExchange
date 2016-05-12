require "refile"
Refile.configure do |config|
  # connection = lambda do |&blk|
  #   ActiveRecord::Base.connection_pool.with_connection do |con|
  #     blk.call(con.raw_connection)
  #   end
  # end
  # config.store = Refile::Postgres::Backend.new(connection)

  #Temporary Fix
  config.cache = Refile::Memory::Backend.new
  config.store = Refile::Memory::Backend.new
end
