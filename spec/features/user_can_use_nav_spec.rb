require "rails_helper"

describe "user can see the nav" do
  it "clicks on create new, redirects to new page" do
    visit students_path

    click_on "Create New Student"

    expect(current_path).to eq(new_student_path)
  end
  it "clicks on all students" do
    visit new_student_path

    click_on "All Students"

    expect(current_path).to eq(students_path)
  end
end
