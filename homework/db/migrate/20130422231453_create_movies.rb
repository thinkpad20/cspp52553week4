class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
    end
    
    create_table :theaters do |t|
    	t.string :name
    	t.string :address
    	t.string :phone_number
    end
  end
end
