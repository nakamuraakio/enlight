json.array!(@firms) do |firm|
  json.extract! firm, :id, :name, :description
  json.url firm_url(firm, format: :json)
end
