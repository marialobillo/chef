class CreateCocineros < ActiveRecord::Migration
  def change
    create_table :cocineros do |t|
      t.string :name
      t.string :email
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
