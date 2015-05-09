json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :age, :university, :major, :phone, :bio, :user_id
  json.url profile_url(profile, format: :json)
end
