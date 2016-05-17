require "refile/s3"
Refile.configure do |config|

  aws = {
    access_key_id: ENV["access_key_id"],
    secret_access_key: ENV["secret_access_key"],
    bucket: ENV["bucket"],
    region: ENV["region"]
  }
  config.cache = Refile::S3.new(prefix: "cache", **aws)
  config.store = Refile::S3.new(prefix: "store", **aws)
end
