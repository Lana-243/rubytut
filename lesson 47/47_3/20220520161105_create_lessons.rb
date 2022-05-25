class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :subject
      t.string :teacher
      t.integer :frequency

      t.timestamps
    end
  end
end
