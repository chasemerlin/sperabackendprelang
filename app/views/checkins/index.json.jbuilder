json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :mood, :is_sober, :needs_help, :content, :user_id, :is_private
  json.url checkin_url(checkin, format: :json)
end
