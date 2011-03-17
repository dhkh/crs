class AddNumberToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :number, :integer
  end

  def self.down
    remove_column :questions, :number
  end
end
