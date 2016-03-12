json.array!(@execs) do |exec|
  json.extract! exec, :id, :name
  json.url exec_url(exec, format: :json)
end
