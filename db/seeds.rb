# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = (1..5).each do |i|
  Post.create(title: "Post #{i}", upvotes: 0)
end

Post.all.each do |post|
  post.comments.create(body: "words owrds words")
end