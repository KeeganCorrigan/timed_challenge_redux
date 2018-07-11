require "rails_helper"

describe "user visits students path" do
  it "sees a list of all students" do
    student_1 = Student.create!(name: "ojasd")
    student_2 = Student.create!(name: "uhasd")

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
  it "links to students" do
    student_1 = Student.create!(name: "ojasd")
    student_2 = Student.create!(name: "uhasd")

    visit students_path

    click_on student_1.name

    expect(current_path).to eq(student_path(student_1))
  end
end
