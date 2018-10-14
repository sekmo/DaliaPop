class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.references :category, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
