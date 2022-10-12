class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.integer :id_number
      t.string :location
      t.integer :student_id
      t.string :password_digest
      t.belongs_to :student, index:{unique:true},foreign_key:true

      t.timestamps
    end
  end
end
