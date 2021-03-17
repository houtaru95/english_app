class AddExplanationToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :explanation, :text
  end
end
