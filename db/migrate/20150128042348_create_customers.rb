class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.text :customer_code
      t.text :name
      t.text :status
      t.text :discount
      t.text :address
      t.text :e_mail
      t.text :telephone
      t.text :birth_day
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
