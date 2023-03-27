class CreateContributions < ActiveRecord::Migration[7.0]
  def change
    create_table :contributions do |t|
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.integer :year
      t.integer :month

      t.timestamps
    end
  end
end
