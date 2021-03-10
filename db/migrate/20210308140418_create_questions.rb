class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :title,         null: false
      t.text :content,       null: false
      t.string :choice_1,    null: false
      t.string :choice_2,    null: false
      t.string :choice_3,    null: false
      t.string :choice_4,    null: false
      t.integer :answer_num, null: false
      t.references :user,    null: false, foreign_key: true

      t.timestamps
    end
  end
end
