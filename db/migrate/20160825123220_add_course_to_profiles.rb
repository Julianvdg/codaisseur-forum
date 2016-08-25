class AddCourseToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :course, foreign_key: true
  end
end
