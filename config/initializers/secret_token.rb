# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# ExampleApp::Application.config.secret_key_base = 'be37d7783312b6584a90dbdcbb65274c4d30bcf89339419d325b5704ef99c8312082ff07989d7550635bd08a1722885080cea01f24f8bdcb35c8b8f1bfb9f2cf'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

ExampleApp::Application.config.secret_key_base = secure_token