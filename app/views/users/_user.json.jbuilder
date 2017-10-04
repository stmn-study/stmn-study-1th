json.extract! user, :id, :name, :password, :gender, :points, :image, :created_at, :updated_at
json.url user_url(user, format: :json)
