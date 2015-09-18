# = User
#
# User class for testing purpose.
class User
  include Mongoid::Document
  include Mongoid::Timestamps

  # === Configuration ===

  # Store documents in the collection named `users`.
  store_in collection: 'users'

  # === Fields ===

  field :login
  field :email
end