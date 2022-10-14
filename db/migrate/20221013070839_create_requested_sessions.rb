class CreateRequestedSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :requested_sessions do |t|
      t.references :parent, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :start_time
      t.string :end_time
      t.string :date

      t.timestamps
    end
  end
end
