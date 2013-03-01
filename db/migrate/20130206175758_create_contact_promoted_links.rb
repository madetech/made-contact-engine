class CreateContactPromotedLinks < ActiveRecord::Migration
  def change
    create_table :contact_promoted_links do |t|
      t.string :title
      t.text :text
      t.string :url
      t.attachment :image
      
      t.timestamps
    end
  end
end
