class CreateHerbs < ActiveRecord::Migration[7.0]
  def change
    create_table :herbs do |t|
      t.string :latin_name
      t.json :common_names
      t.string :description

      t.timestamps
    end
  end
end
