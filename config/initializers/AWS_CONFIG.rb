AWS_CONFIG = {
    'access_key_id' => ENV["S3_ACCESS_KEY"],
    'secret_access_key' => ENV["S3_SECRET_KEY"],
    'bucket' => 'storybucketstorage',
    'acl' => 'public-read',
    'key_start' => 'uploads/'
}