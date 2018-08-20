class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :title
      t.string :content
      t.integer :state_id
      t.float :validity

      t.timestamps
    end
  end
end
