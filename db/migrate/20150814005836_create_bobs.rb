class CreateBobs < ActiveRecord::Migration
  def change
    create_table :bobs do |t|
        t.string :saying
         t.string :author
         t.timestamps
    end
  end
end
