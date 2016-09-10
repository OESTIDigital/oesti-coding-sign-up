class CreateConfig < ActiveRecord::Migration[5.0]
  def change
    create_table :configs do |t|
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
