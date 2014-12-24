json.array!(@course_sessions) do |course_session|
  json.extract! course_session, :id, :course_id, :instructor_id, :date_time, :place
  json.url course_session_url(course_session, format: :json)
end
