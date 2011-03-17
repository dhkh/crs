class AddResponseToClickers < ActiveRecord::Migration
  def self.up
    add_column :clickers, :response, :string, :default => ""
  end

  def self.down
    remove_column :clickers, :response
  end
end
