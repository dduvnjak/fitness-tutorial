class AddingUserTypes < ActiveRecord::Migration
	def up
		add_column :users, :user_type_id, :integer
    	
    create_table :user_types do |t|
      t.string :name,  :null => false
  	end
  end

  def down
  	drop_table :user_types
  	remove_column :users, :user_type_id, :integer
	end
end
