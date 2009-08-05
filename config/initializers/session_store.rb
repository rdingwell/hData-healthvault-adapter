# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_healthvault_session',
  :secret      => '7bf9d9211c764e8b4af51bccabb65f803dd7729f8435122de14db8e0bdc34e6a24256f95271a4435e74d563f432ce96b5a21d26732904d3b5dd93cee8ec49462'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
