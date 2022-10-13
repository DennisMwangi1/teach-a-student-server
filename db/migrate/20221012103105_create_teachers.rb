class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.integer :age
      t.string :email
      t.string :campus
      t.integer :id_number
      t.text :strong_subjects, array:true, default: []
      t.string :location
      t.integer :campus_year
       t.string :password_digest

      t.timestamps
    end
  end
end
