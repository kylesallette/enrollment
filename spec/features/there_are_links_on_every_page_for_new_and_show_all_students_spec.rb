require 'rails_helper'

  describe "user visits student index page"  do
    context "visit[students_path]"  do
      it "they click the link for create new student"  do

      visit students_path

      click_link("Create a new student")

      expect(current_path).to eq(new_student_path)
    end
  end
end


  describe "user visits student index page"  do
    context "visit[students_path]"  do
      it "they click the link for create new student"  do

      visit students_path

      click_link("See all students")

      expect(current_path).to eq(students_path)
    end
  end
end



  describe "user visits student index page"  do
    context "visit[edit_student_path]"  do
      it "they click the link for see all  students"  do
      student = Student.create(name: "kyle")

      visit edit_student_path(student)

      click_link("See all students")

      expect(current_path).to eq(students_path)
      expect(page).to have_content(student.name)
    end
  end
end
