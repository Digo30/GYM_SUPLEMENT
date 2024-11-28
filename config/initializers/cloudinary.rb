Cloudinary.config do |config|
  url = ENV['CLOUDINARY_URL'] # Verifica se a variável está definida
  raise "CLOUDINARY_URL not set" if url.nil?

  # Parsea os componentes da URL
  uri = URI.parse(url)

  config.cloud_name = uri.host # Obtém o "cloud_name" após o `@`
  config.api_key = uri.user # Obtém o "api_key"
  config.api_secret = uri.password # Obtém o "api_secret"
  config.secure = true
  config.cdn_subdomain = true
end
