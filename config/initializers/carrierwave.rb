CarrierWave.configure do |config|
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.root = Rails.root.join('public/uploads')
    config.base_path = '/uploads'
  else
    config.storage = :fog
    config.fog_credentials = {
      provider: 'AWS',                                       # required
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],           # required unless using use_iam_profile
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],   # required unless using use_iam_profile
      region: ENV['AWS_REGION']                              # optional, defaults to 'us-east-1'
    }
    config.fog_directory = ENV['AWS_BUCKET']                 # required
    config.fog_public = false                                # optional, defaults to true
    config.fog_authenticated_url_expiration = 1.hour
  end
end
