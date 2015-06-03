class CreateElectionsTable < ActiveRecord::Migration
  
  def change
    
    create_table :elections do |t|
      t.date :election_date
      t.boolean :fixed_date
      t.text :notes
      t.integer :instructor_id
    end
  
  end
  
end
