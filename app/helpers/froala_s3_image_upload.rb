def froala_s3_image_config
  s3_config = {
      region: 's3',
      bucket: 'storybucketstorage',
      keyStart: 'uploads/',
      acl: 'public-read',
      accessKeyId: 'AKIAJDATCTI6UROYWHJQ'
  }

  policy = {
      expiration: 1.day.from_now.iso8601,
      conditions: [
          { bucket: s3_config[:bucket] },
          { acl: s3_config[:acl] },
          { success_action_status: '201' },
          { 'x-requested-with': 'xhr' },
          [ 'starts-with', '$key', 'uploads/' ],
          [ 'starts-with', '$Content-Type', '' ]
      ]
  }

  s3_config[:policy] = Base64.encode64(policy.to_json)
  s3_config[:signature] = Base64.encode64(
      OpenSSL::HMAC.digest(
          OpenSSL::Digest.new('sha1'),
          '$1I9ACVi7sKvFkHYGqo4zTt1gDpMPtd0/ekGRjITx',
          s3_config[:policy]
      )
  ).gsub("\n","").to_json

  return s3_config
end