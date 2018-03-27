require 'rails_helper'

  describe "user visits adreess new page"  do
    context "visit[students_path]"  do
      it "they click on students name"  do
      student1 = Student.create!(name: "kyle")

       new_student_address_path(student1.id)

      fill_in("Description", :with => 'fun')
      fill_in('Street', :with => 'Percy')
      fill_in('City', :with => 'Jacksonville')
      fill_in('State', :with => 'FL')
      fill_in('Zipcode', :with => '32218')

      click_button('Create Address')

      expect(page).to have_content('fun')
      expect(page).to have_content('Percy')
      expect(page).to have_content('Jacksonville')
      expect(page).to have_content('FL')
      expect(page).to have_content('32218')
      expect(page).to have_content('kyle')
      expect(page).to have_content('Student name')
    end
  end
end
