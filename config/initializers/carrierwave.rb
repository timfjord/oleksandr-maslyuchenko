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
      provider: 'Google',
      google_storage_access_key_id: ENV['GCS_ACCESS_KEY_ID'],
      google_storage_secret_access_key: ENV['GCS_SECRET_ACCESS_KEY'],
    }
    config.fog_directory  = ENV['FOG_MEDIA_DIRECTORY']
  end
end
