require "rails_helper"

describe "user visit student show page" do
  it "sees the name of a student" do
    student_1 = Student.create!(name: "oijasd")

    visit student_path(student_1)

    expect(page).to have_content(student_1.name)
  end
  it "sees if student has multiple addresses" do
    student_1 = Student.create!(name: "oijasd")
    address_1 = student_1.addresses.create!(street:
    "uiasdh", state: "oiasdui", city: "oihasiuh", zip_code: 123)
    address_2 = student_1.addresses.create!(street:
    "upoiasdjias", state: "ooijasfhu", city: "oijasfoji", zip_code: 284979)

    visit student_path(student_1)

    expect(page).to have_content(address_1.street)
    expect(page).to have_content(address_2.street)
  end
  it "sees a list of courses the student is enrolled in" do
    student_1 = Student.create!(name: "oijasd")
    course_1 = student_1.courses.create!(name: "ohiasihudasd")
    course_2 = student_1.courses.create!(name: "oiasdiuhas91")

    visit student_path(student_1)

    expect(page).to have_content(course_1.name)
    expect(page).to have_content(course_2.name)
  end
end
