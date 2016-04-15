json.array!(@messages) do |message|
  json.extract! message, :id, :content, :user_id, :group_id, :user_recipient_id, :friendship_id, :resource_page_id, :resource_page_id
  json.url message_url(message, format: :json)
end
