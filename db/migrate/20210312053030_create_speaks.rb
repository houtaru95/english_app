class CreateSpeaks < ActiveRecord::Migration[6.0]
  def change
    create_table :speaks do |t|
      t.text :subject, null: false
      t.text :voice, null:false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
