class InitialSeeding < ActiveRecord::Migration
  def up

    create_table :users do |t|
      t.string :username, :null => false
      t.string :password_hash, :null => false
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    create_table :articles do |t|
      t.string      :header, :null => false
      t.text        :content, :null => false
      t.date        :publish_date

      t.references  :user, :null => false

      t.timestamps
    end
    
  end

  def down
    drop_table :users
    drop_table :articles
  end
end
