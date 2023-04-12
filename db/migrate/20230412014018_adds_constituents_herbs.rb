class AddsConstituentsHerbs < ActiveRecord::Migration[7.0]
  def change
    create_table :constituents_herbs, id: false do |t|
      t.belongs_to :constituent
      t.belongs_to :herb
    end
  end
end
