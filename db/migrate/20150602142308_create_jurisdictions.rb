class CreateJurisdictions < ActiveRecord::Migration

  def change
    
    create_table :jurisdictions do |t|
      t.string :name
      t.string :abbreviation
      t.string :tier
    end
  
  end

end