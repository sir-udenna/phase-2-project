Some methods in your models. There should be at least twenty methods total in your models. These are to be used to better extract data from your tables. If all of your logic is in your controller, you're making a mistake. Talk to an instructor if you're confused about the type of methods that might go on your models.
No APIs until you get approval from an instructor. If your app completely works with dummy data and you have time left over, you can ask an instructor if you can start working with an API.
An analytics page - The main learning goal of this is to get you to write some interesting ActiveRecord queries.
No JavaScript. Stay focused on Rails for this project - we'll have plenty of time to cover JS topics.

Title: School CRM

ModelViewController:

Depending on who's loging in - return student or staff
Professor Login ---  Index/Show/New/Create/Edit/Update/Delete  --- Login out
Professor should have most CRUD ability 

Description: 
Our project will be a School/Hogwarts/My Hero Academia CRM app - This will be an app used by a school/Hogwarts'. 

As a user you can:
Create & Edit Grade - Able to see class descriptions

View Students index page && Student page (with lessons)
View Professors index page && Professor page (with lessons)
View all subjects available @ school
View all houses with students attached to house

Able to enroll in a class - Able to choose a professor 
As a user you can expel student from school (delete)

Stretch goals will be:
- styling house page with images // background
- login page for students/professors - route to their responsibilites for the day
- Able to log out

1. Models: 
Course/House 
Student 
Lesson
Professor

<-House--<Student--<Lesson>--<Professor>--
            |
            ^
          grades







<!-- changes - removal of student_id -->
# changes - time set to integer
# changes - lesson assocation change from 2 belongs_to


What I want to do is display their lessons in a string // randomize the day of the week the lesson will take place on // Seed more lessons per Student // Ask Student if he/she wants to check out here Grade from her last lesson



<li><%=@student.lessons.map{|o|o.lesson_name}%> lesson on <%=@mydays.shuffle.first%>
at <%=@student.lessons.map{|o|o.time}%> with <%=@student.lessons.map{|o|o.professor_id}%></li>

# <%@lessons.each do |l|%>
#     <li><%=l.lesson_name%></li>
#     <%end%>



has_many :lessons
    has_many :students, through: :lessons






    <li><%=@student.lessons.map{|o|o.lesson_name}%> lesson on <%=@mydays.shuffle.first%>
at <%=@student.lessons.map{|o|o.time}%> with <%=@student.lessons.map{|o|o.professor_id}%></li>

# <%@lessons.each do |l|%>
#     <li><%=l.lesson_name%></li>
#     <%end%>



So - this is each Students' show page -->

What I want to do is display their lessons in a string // randomize the day of the week the lesson will take place on // Seed more lessons per Student // Ask Student if he/she wants to check out here Grade from her last lesson


