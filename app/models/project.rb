class Project < ApplicationRecord
  include PgSearch
  multisearchable against: :name
end
