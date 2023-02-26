class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :type
      t.integer :year
      t.references :author, null: false, foreign_key: true
      t.references :victim, null: false, foreign_key: true
      t.references :crime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
