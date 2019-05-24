class User < ApplicationRecord
  include PgSearch
  multisearchable against: [:first_name, :last_name, :email]
end
