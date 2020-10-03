class Monitoramento < ApplicationRecord
  belongs_to :localidade, class_name: "Localidade", foreign_key: "localidade_id"
end
