require 'rails_helper'

RSpec.describe "User Index" do
  it "can see the name of each user record in the system" do
    student = create(:user, email: "student@example.com")
    tutor = create(:user, :tutor, email: "tutor@example.com")
    tutoring_session = create(:tutoring_session, student: student, tutor: tutor)

    visit '/users'

    expect(page).to have_content("student@example.com")
    expect(page).to have_content("tutor@example.com")
  end
end