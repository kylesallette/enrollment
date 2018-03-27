require 'rails_helper'

  describe "user visits student index page"  do
    context "visit[students_path]"  do
      it "they see the name of the student"  do
      student1 = Student.create!(name: "kyle")


      visit students_path

      click_link('delete student')

      expect(current_path).to eq(students_path)
      expect(page).not_to have_content(student1)
    end
  end
end
