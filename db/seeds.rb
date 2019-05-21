3.times do |i|
  User.create(first_name: "#{i + 1} first", last_name: "#{i + 1} last")
end

3.times do |i|
  Course.create(name: "course #{i + 1}")
end

Enrollment.create(course_id: Course.first.id, user_id: User.first.id, role: "student")
Enrollment.create(course_id: Course.first.id, user_id: User.last.id, role: "teacher")