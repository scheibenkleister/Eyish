# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eyish_session',
  :secret      => 'bfbc80f41803263b1385faf56e5d6353eaa42f563f7abf9358208711e81e8d4d1d5d293c39eb6f961e8029dfaf0f31870bef65e4e5790e458f932751af5f603f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
