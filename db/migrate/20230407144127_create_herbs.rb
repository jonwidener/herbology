class CreateHerbs < ActiveRecord::Migration[7.0]
  def change
    create_table :herbs do |t|
      t.string :latin_name
      t.json :common_names
      t.string :description

      t.timestamps
    end

    create_table :constituencies do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :constituencies_herbs, id: false do |t|
      t.belongs_to :constituency
      t.belongs_to :herb
    end
  end
end
