require 'rails_helper'

  describe "user visits student edit page"  do
    context "visit[edit_student_path]"  do
      it "they see a form and they fill it out and clicks submit. They then see new edit"  do
      student1 = Student.create!(name: "kyle")

      visit edit_student_path(student1)

      fill_in('Name', :with => 'kyle-2.0')

      click_button('Update Student')

      expect(current_path).to eq(student_path(student1))
      expect(page).to have_content('kyle-2.0')
    end
  end
end
