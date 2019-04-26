class Person < ApplicationRecord
  belongs_to :people_category, dependent: :destroy
end