class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end
