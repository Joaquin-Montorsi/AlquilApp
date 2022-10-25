class Alquiler < ApplicationRecord
    belongs_to :user
    belongs_to :auto
end
