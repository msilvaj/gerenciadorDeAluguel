json.extract! usuario, :id, :admin, :nome, :peso, :pesoIdeal, :altura, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
