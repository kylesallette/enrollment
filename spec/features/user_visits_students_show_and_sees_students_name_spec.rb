require 'rails_helper'

  describe "user visits student show page"  do
    context "visit[student_path]"  do
      it "they see the name of the student"  do
    student = Student.create(name: "kyle")

    visit student_path

    expect(current_path).to eq(student_path)
    expect(page).to have_content(student.name)
  end
end
end 
