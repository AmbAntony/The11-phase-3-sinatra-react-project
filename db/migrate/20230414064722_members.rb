class Members < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :member_number
      t.integer :mobile_number
    end
  end
end
