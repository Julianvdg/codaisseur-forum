class RemoveStudentClassFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :student_class, :integer
  end
end
