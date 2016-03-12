json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :announced_at, :message, :Exec_id
  json.url announcement_url(announcement, format: :json)
end
