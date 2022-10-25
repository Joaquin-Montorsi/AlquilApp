class Car < ApplicationRecord
    belongs_to :position, dependent: :destroy
    has_many :rental
    has_many :report
end
