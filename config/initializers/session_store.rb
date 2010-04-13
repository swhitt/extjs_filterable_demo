# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_extjs_filterable_demo_session',
  :secret      => '44bd0316e02b31416d4482d2f5389221dd099bf58c57283881883abf82ddeebd0ff428909d3fd6c465ff8d7a200f683d8cae7a380fa9ec8dfbdcd737037695eb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
