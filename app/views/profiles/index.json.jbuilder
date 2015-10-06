json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :location, :bio, :website, :curr_project, :industry_id, :avatar, :twitter, :instagram, :facebook, :imdb, :portfolio
  json.url profile_url(profile, format: :json)
end
