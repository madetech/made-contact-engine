class DropContactPromotedLinks < ActiveRecord::Migration
  def change
    drop_table :contact_promoted_links
  end
end
