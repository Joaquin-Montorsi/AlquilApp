class User < ApplicationRecord
    belongs_to :posicion, dependent: :destroy
    has_one :auto
    has_many :tarjetas, dependent: :destroy
    has_many :alquilers
    has_many :reportes
end
