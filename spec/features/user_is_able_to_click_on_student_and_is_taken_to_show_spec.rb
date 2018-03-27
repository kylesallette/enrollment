require 'rails_helper'

  describe "user visits student index page"  do
    context "visit[students_path]"  do
      it "they click on students name"  do
      student1 = Student.create!(name: "kyle")

      visit students_path

      click_link('kyle')

      expect(current_path).to eq(student_path(student1))
      expect(page).to have_content(student1.name)
    end
  end
end
