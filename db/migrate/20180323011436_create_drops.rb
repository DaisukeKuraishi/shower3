class CreateDrops < ActiveRecord::Migration[5.1]
  def change
    create_table :drops do |t|
      t.string :title, null: false
      t.text :reason, null: false
      t.text :p_key, null: false
      t.text :sns

      t.timestamps
    end
  end
end
