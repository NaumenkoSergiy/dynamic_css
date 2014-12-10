class AddStyleSheet < ActiveRecord::Migration
	def change
		create_table :stylesheets do |t|
			t.integer 	 :user_id
			t.text       :contents
		end
	end
end
