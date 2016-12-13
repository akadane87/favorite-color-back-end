class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :favorite

      t.timestamps null: false
    end
  end
end
