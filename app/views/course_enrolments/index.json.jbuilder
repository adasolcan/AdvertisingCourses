json.array!(@course_enrolments) do |course_enrolment|
  json.extract! course_enrolment, :id, :user_id, :session_id
  json.url course_enrolment_url(course_enrolment, format: :json)
end
