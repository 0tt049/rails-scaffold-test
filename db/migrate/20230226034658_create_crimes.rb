class CreateCrimes < ActiveRecord::Migration[7.0]
  def change
    create_table :crimes do |t|
      t.string :type
      t.string :IAD

      t.timestamps
    end
  end
end
