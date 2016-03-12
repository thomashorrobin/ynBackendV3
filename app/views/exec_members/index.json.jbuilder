json.array!(@exec_members) do |exec_member|
  json.extract! exec_member, :id, :possition, :Exec_id, :Individual_id
  json.url exec_member_url(exec_member, format: :json)
end
