class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.float :rating
      t.integer :user_id
      t.integer :phrase_id
    end
  end
end
