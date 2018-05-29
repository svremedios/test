require 'csv'

Faculty.delete_all
faculty_data = CSV.open("db/course_data/faculty.csv").readlines
for i in faculty_data
    if i[1].index(",") != nil
        Faculty.create first_name: i[1][i[1].index(",")+2,i[1].length], last_name: i[1][0,i[1].index(",")], raw_name: i[1]
    end
end

Course.delete_all
course_data = CSV.open("db/course_data/courses.csv").readlines

for i in course_data[1..course_data.length]
    Course.create code_id: i[1], name: i[2], credit: i[4], discipline: i[3]
end

Course.where("code_id LIKE ?", "").delete_all

Coursesession.delete_all
coursesession_data = CSV.open("db/course_data/combined_data.csv").readlines
  
for i in coursesession_data[1..coursesession_data.length]
  if Course.find_by(code_id: i[29]).nil?
    tmp_course_id = nil
  else
    tmp_course_id = Course.find_by(code_id: i[29]).id
  end
  if Faculty.find_by(raw_name: i[3]).nil?
    tmp_faculty_id = nil
  else
    tmp_faculty_id = Faculty.find_by(raw_name: i[3]).id
  end
  Coursesession.create  course_id: tmp_course_id,
                        term: i[27],
                        year: i[26],
                        faculty_id: tmp_faculty_id,
                        course_score: i[17],
                        faculty_score: i[18],
                        learning_score: i[19],
                        difficult_score: i[20],
                        global_score: i[21],
                        examples_score: i[22],
                        workload_score: i[23],
                        campus: i[7],
                        schedule: i[8]
end
  


# Stock.where("symbol LIKE ?","%^%").delete_all
    