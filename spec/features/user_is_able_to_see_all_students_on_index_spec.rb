require 'rails_helper'

  describe "user visits student index page"  do
    context "visit[students_path]"  do
      it "they see the name of the student"  do
      student1 = Student.create!(name: "kyle")
      student2 = Student.create!(name: "kyle")
      student3 = Student.create!(name: "kyle")

      visit students_path


    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
    expect(page).to have_content(student3.name)
    end
  end
end
