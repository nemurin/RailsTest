class Person < ApplicationRecord
    validates :name, presense: true
    validates :age, numericality: true
end
