class CreateFalts < ActiveRecord::Migration[5.2]
  def change
    create_table :falts do |t|

      t.timestamps
    end
  end
end
