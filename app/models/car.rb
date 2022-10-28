class Car < ApplicationRecord
    has_one :position, dependent: :destroy
    has_many :rental
    has_many :report
end
