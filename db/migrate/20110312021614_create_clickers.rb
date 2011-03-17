class CreateClickers < ActiveRecord::Migration
  def self.up
    create_table :clickers do |t|
			t.integer :question_id
			t.integer :a_count
			t.integer :b_count
			t.integer :c_count
			t.integer :d_count
			
      t.timestamps
    end
  end

  def self.down
    drop_table :clickers
  end
end
