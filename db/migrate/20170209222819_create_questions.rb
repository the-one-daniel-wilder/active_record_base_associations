class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.text :text, null: false

      t.timestamp
    end
  end
end
