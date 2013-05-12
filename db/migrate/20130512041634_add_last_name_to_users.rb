class AddLastNameToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :last_name, :string
  	User.all.each do |u|
  		u.last_name="name"
  		u.save
  	end
  	change_column :users, :last_name, :string, null: false
    
  end
end
