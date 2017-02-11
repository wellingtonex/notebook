class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :descricption

      t.timestamps null: false
    end
  end
end
