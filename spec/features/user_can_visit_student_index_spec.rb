require "rails_helper"

describe "a user visist students path" do
  it "sees a list of student" do
    student_1 = Student.create!(name: "ohasd")
    student_2 = Student.create!(name: "poias9uhiu")

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end

  it "deletes a student" do
    student_1 = Student.create!(name: "ohasd")
    student_2 = Student.create!(name: "poias9uhiu")

    visit students_path

    within "#student-id#{student_1.id}" do
      click_on "delete"
    end

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student_1.name)
  end
end
