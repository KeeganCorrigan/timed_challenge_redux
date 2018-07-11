require "rails_helper"

describe "user visits new student address path" do
  describe "fills in form and clicks create" do
    it "sees student page with address on it" do
      student_1 = Student.create!(name: "uihad")

      city = "aoidsj"
      state = "pijqr"
      street = "pioasd"
      zip_code = 1

      visit new_student_address_path(student_1)

      fill_in :address_city, with: city
      fill_in :address_state, with: state
      fill_in :address_street, with: street
      fill_in :address_zip_code, with: zip_code

      click_on "Create Address"

      expect(current_path).to eq(student_path(student_1))
      expect(page).to have_content(city)
      expect(page).to have_content(state)
      expect(page).to have_content(street)
      expect(page).to have_content("zip code:#{zip_code}")
    end
  end
end
