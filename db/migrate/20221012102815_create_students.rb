class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :school
      t.integer :form
      t.string :avg_grade
      t.string :trgt_grade
      t.string :password_digest

      t.timestamps
    end
  end
end
