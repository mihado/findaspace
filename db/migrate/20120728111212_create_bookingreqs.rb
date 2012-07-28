class CreateBookingreqs < ActiveRecord::Migration
  def change
    create_table :bookingreqs do |t|
      t.string :email
      t.string :username
      t.integer :space_id
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
