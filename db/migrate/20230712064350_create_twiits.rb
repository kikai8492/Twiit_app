class CreateTwiits < ActiveRecord::Migration[6.1]
  def change
    create_table :twiits do |t|

      t.timestamps
    end
  end
end
