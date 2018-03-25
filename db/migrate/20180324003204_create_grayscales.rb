class CreateGrayscales < ActiveRecord::Migration[5.1]
  def change
    create_table :grayscales do |t|
      t.string :title
      t.text :reason
      t.text :p_key
      t.text :sns

      t.timestamps
    end
  end
end
