class RenameProfilesClassColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :profiles, :class, :student_class
  end
end
