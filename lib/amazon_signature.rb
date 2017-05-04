module AmazonSignature
  extend self

  def signature
    Base64.encode64(
        OpenSSL::HMAC.digest(
            OpenSSL::Digest.new('sha1'),
            '$1I9ACVi7sKvFkHYGqo4zTt1gDpMPtd0/ekGRjITx', self.policy
        )
    ).gsub("\n", "")
  end

  def policy
    Base64.encode64(self.policy_data.to_json).gsub("\n", "")
  end

  def policy_data
    {
        expiration: 10.hours.from_now.utc.iso8601,
        conditions: [
            ["starts-with", "$key", 'uploads/'],
            ["starts-with", "$x-requested-with", "xhr"],
            ["content-length-range", 0, 20.megabytes],
            ["starts-with", "$content-type", ""],
            {bucket: 'storybucketstorage'},
            {acl: 'public-read'},
            {success_action_status: "201"}
        ]
    }
  end

  def data_hash
    {:signature => self.signature, :policy => self.policy, :bucket => 'storybucketstorage', :acl => 'public-read', :key_start => 'uploads/', :access_key => 'AKIAJDATCTI6UROYWHJQ'}
  end
end