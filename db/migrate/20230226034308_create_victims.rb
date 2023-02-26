class CreateVictims < ActiveRecord::Migration[7.0]
  def change
    create_table :victims do |t|
      t.string :name
      t.string :gender
      t.string :social_class
      t.string :marker
      t.boolean :dead
      t.boolean :active_voice
      t.boolean :active_role
      t.boolean :guilty

      t.timestamps
    end
  end
end
