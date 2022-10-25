class Position < ApplicationRecord
    has_one :user
    has_one :car
end
