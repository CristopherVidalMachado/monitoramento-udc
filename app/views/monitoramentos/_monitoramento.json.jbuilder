json.extract! monitoramento, :id, :temperatura, :ph, :turbidez, :condutividade, :localidade_id, :created_at, :updated_at
json.url monitoramento_url(monitoramento, format: :json)
