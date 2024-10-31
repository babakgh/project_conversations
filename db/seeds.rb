default_users = [
  { name: 'babak' },
  { name: 'john' },
]

default_users.each do |user_attributes|
  User.create!(user_attributes)
end

puts "Created #{User.count} users"

default_projects = [
  { name: 'Website Redesign', status: 'in_progress' },
  { name: 'Mobile App Development', status: 'pending' },
  { name: 'Database Migration', status: 'completed' }
]

default_projects.each do |project_attributes|
  Project.create!(project_attributes)
end

puts "Created #{Project.count} projects"
