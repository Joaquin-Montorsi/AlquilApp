class User < ApplicationRecord
    belongs_to :position
    has_many :card
    has_many :rental
    has_many :report
end
