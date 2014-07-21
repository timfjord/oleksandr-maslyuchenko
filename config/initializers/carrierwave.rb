require 'carrierwave/processing/mime_types'

CarrierWave.configure do |config|
  config.cache_dir = Rails.root.join 'tmp', 'uploads'

  case Rails.env.to_sym
  when :development, :test
    config.storage = :file
    config.fog_public = true
  else
    config.storage = :fog
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'eu-west-1'
    }
    config.fog_directory  = ENV['FOG_MEDIA_DIRECTORY']
  end
end
