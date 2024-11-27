Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUDINARY_URL'].split('@')[1].split(':')[0]
  config.api_key = ENV['CLOUDINARY_URL'].split(':')[1].split('/')[1]
  config.api_secret = ENV['CLOUDINARY_URL'].split(':')[2].split('@')[0]
  config.secure = true
  config.cdn_subdomain = true
end
