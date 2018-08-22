class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :content
      t.integer :state_id
      t.float :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
