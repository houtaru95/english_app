class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.text :explanation, null: false
      t.references :question, null: false
      t.timestamps
    end
  end
end
