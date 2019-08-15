# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |num_blog|
    Blog.create!(
        title: "My blog post #{num_blog}",
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
         totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
          Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
           sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
            Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
             consectetur, adipisci velit,
             sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
              Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,
               nisi ut aliquid ex ea commodi consequatur?
                Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur,
         vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
    )
end

p "10 blog post creates"


5.times do |num_skill|
    Skill.create!(
        title: "Rails #{num_skill}",
        percent_utilized: 15
    )
end

p "5 Skills post creates"


9.times do |port_item|
    Portfolio.create!(
        title:"Portoflio title is #{port_item}",
        subtitle: "my great service!!",
        body: "ovo ide u bodiju neke gluposti cisto tako nista bitno previse, bez brige bla bla bla",
        main_image:"https://via.placeholder.com/600x400",
        thumb_image:"https://via.placeholder.com/350x200"
    )
end


p "9 Portfolio items creates"






#title: => is actually a Symbol class/object class



#this is vanilla Ruby method, for iterating over something, 10.times.
#10 is Integer/Fixnum object, times is method on that object, do end is block, can be written like {} if its on ONE line
#and |blog| is BLOCK VARIABLE, that is having it's own scope, and here it means, take whatever .EACH method pass to block from 
# from Integer object, and it will pass it, 
#BUT HER EWE USE TIME, just to ITERATE 10 TIMES on already something we have in block, which is actually taking from times, an INDEX

#https://via.placeholder.com/350x200