class AddAttachmentLogoToFirms < ActiveRecord::Migration
  def self.up
    change_table :firms do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :firms, :logo
  end
end
