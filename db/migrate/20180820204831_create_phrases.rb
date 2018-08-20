class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|

      t.timestamps
    end
  end
end
