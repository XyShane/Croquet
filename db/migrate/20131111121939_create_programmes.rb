class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
