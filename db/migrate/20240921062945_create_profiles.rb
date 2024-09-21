class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.references :account, index: {:unique=>true}, null: false, foreign_key: true
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
