require "rails_helper"

describe Address, type: :model do
  describe "validations" do
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:state) }
  end
  describe "relationships" do
    it { should belongs_to(:student) }
  end
end
