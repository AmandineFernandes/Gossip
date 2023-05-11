class CreateSessionPages < ActiveRecord::Migration[7.0]
  def change
    create_table :session_pages do |t|
      t.string :session

      t.timestamps
    end
  end
end
