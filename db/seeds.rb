# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "Blog Post #{blog}",
        body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections", 
        topic_id: Topic.last.id
    )
end
puts "Blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}", 
        percent_utilized: 15
    )
end
puts "Skill created"

8.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}", 
        subtitle: "Ruby on Rails", 
        body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", 
        main_image: "https://via.placeholder.com/600x200",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

1.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}", 
        subtitle: "Angular", 
        body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.", 
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "portfolio item created"

3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}", 
        portfolio_id: Portfolio.last.id
    )
    # Portfolio.last.technologies.create!(
    #     name: "Technology #{technology}"
    # )
end