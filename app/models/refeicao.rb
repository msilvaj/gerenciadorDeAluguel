class Refeicao < ApplicationRecord
  has_one :trefeicao
  belongs_to :dieta
end
