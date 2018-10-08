require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end
  
  
  test "shouldn't find missing student" do 
    assert Student.where("name like ?", "James_Bond").length == 0
  end

  test "should find students" do
    assert Student.where("name like ?", "MyString").length == 2
  end

  test "searches return 200" do
    get search_students_url, params: { search: "Bob" }
    assert_equal 200, status
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { course_id: @student.course_id, id_number: @student.id_number, name: @student.name, section_id: @student.section_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { course_id: @student.course_id, id_number: @student.id_number, name: @student.name, section_id: @student.section_id } }
    assert_redirected_to student_url(@student)
  end

 test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end
	
    assert_redirected_to students_url
  end
end
