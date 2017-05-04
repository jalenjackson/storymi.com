AWS_CONFIG = {
    'access_key_id' => ENV["aws_access_key_id"],
    'secret_access_key' => ENV["aws_secret_access_key"],
    'bucket' => ENV["storybucketstorage"],
    'acl' => ENV["public-read"],
    'key_start' => ENV["uploads/"],

}