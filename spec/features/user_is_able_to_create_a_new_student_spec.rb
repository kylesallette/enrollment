require 'rails_helper'

  describe "user visits student new page"  do
    context "visit[new_student_path]"  do
      it "they see a form and fills it put and clicks submit"  do

        visit new_student_path

        fill_in('Name', :with => 'John')

      click_button('Create Student')

        expect(page).to have_content('John')
      end
    end
  end
