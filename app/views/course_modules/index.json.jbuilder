json.array!(@course_modules) do |course_module|
  json.extract! course_module, :id, :name, :abreviation
  json.url course_module_url(course_module, format: :json)
end
