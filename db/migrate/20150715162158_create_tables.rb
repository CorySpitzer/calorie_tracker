class CreateTables < ActiveRecord::Migration
  def change
    create_table :calorie_modifiers do |t|
      t.boolean :is_intake
      t.string :name
      t.integer :calories
      t.integer :user_id
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
    end
  end
end
