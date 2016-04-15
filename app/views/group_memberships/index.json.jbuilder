json.array!(@group_memberships) do |group_membership|
  json.extract! group_membership, :id, :status, :user_id, :group_id, :inviter_id
  json.url group_membership_url(group_membership, format: :json)
end
