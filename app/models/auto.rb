class Auto < ApplicationRecord
    belongs_to :posicion, dependent: :destroy
    belongs_to :user
    has_many :alquilers
    has_many :reportes
end
