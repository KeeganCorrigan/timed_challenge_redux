require 'rails_helper'

describe "user visits new student path" do
  describe "user fills out form and clicks create" do
    it "creates a new student" do
      name = "oihasd"

      visit new_student_path

      fill_in :student_name, with: name

      click_on "Create Student"

      expect(current_path).to eq(student_path(Student.last.id))
      expect(page).to have_content(name)
    end
  end
end
