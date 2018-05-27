# Data from Nasdaq on stocks listed on US exchanges
# Taking a subset of data to speed up seeding

require 'csv'

Faculty.delete_all
faculty_data = CSV.open("db/course_data/faculty.csv").readlines
for i in faculty_data
    if i[1].index(",") != nil
        Faculty.create first_name: i[1][i[1].index(",")+2,i[1].length], last_name: i[1][0,i[1].index(",")]
    end
end

Course.delete_all
course_data = CSV.open("db/course_data/courses.csv").readlines

for i in course_data[1..course_data.length]
    Course.create code_id: i[1], name: i[2], credit: i[4], discipline: i[3]
end


# Coursesession.delete_all
# coursesession_data = CSV.open("db/course_data/combined_data.csv").readlines
# for i in coursesession_data
#   Coursession.create  course_id: integer
#   term: text
#   year: integer
#   faculty_id: integer
#   course_score: integer
#   faculty_score: integer
#   learning_score: integer
#   difficult_score: integer
#   global_score: integer
#   examples_score: integer
#   workload_score: integer
#   campus: text
#   schedule: text
# end
  


# Stock.where("symbol LIKE ?","%^%").delete_all
    