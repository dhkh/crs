class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
			t.text :question
			t.string :a
			t.string :b
			t.string :c
			t.string :d
			t.string :answer
			
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
