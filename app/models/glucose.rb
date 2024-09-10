class Glucose < ApplicationRecord
  validates :date, presence: true
  validates :before_breakfast_glucose, :after_breakfast_glucose, :before_lunch_glucose, :after_lunch_glucose,
  :before_dinner_glucose, :after_dinner_glucose, presence: true
end
