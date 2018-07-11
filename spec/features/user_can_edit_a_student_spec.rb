require 'rails_helper'

describe "user visits edit student path" do
  it "can fill out form and click update to edit student" do
    new_name = "ohasuhdas"
    student_1 = Student.create!(name: "oijasd")

    visit edit_student_path(student_1)

    fill_in :student_name, with: new_name

    click_on "Update Student"

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(new_name)
  end
end
