class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :content
      t.string :description
      t.integer :state_id
      t.integer :user_id

      t.timestamps
    end
  end
end
