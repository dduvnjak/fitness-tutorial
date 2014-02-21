class AddingTrainers < ActiveRecord::Migration
  def up

    create_table :trainers do |t|
      t.string :first_name,  :null => false
      t.string :last_name,   :null => false
      t.string :header,      :null => false
      t.text   :description, :null => false
      t.float  :hour_price

      t.references :user

      t.timestamps
    end
    
  end

  def down
    drop_table :trainers
  end
end
