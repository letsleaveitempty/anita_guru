class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.text :problem
      t.text :solution

      t.timestamps
    end
  end
end
