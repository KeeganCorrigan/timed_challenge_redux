require "rails_helper"

describe "a user visits course show page" do
  it "can see a list of students in that course" do
    course = Course.create!(name: "oiasd")
    student_1 = course.students.create!(name: "oihasiduha")
    student_2 = course.students.create!(name: "oijasdiuhasd")

    visit course_path(course)

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
end
