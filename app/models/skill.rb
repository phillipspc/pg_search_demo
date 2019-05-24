class Skill < ApplicationRecord
  include PgSearch
  multisearchable against: :name
end
