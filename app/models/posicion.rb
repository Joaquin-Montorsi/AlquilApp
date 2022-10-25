class Posicion < ApplicationRecord
    has_one :user
    has_one :auto
end
