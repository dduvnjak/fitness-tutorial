class AddingUserTypes < ActiveRecord::Migration
	def up
		add_column :users, :user_type, :integer
    	
    	create_table :user_types do |t|
      		t.string :user_type_name,  :null => false
      		t.integer :user_type,   :null => false
      	end
  	end
    def down
    	drop_table :user_types
    	remove_column :users, :user_type, :integer
  	end
end
