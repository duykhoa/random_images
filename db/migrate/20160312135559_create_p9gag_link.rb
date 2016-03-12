class CreateP9gagLink < ActiveRecord::Migration
  def change
    create_table :p9gag_links do |t|
      t.string :link
    end
  end
end
