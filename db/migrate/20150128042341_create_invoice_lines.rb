class CreateInvoiceLines < ActiveRecord::Migration
  def change
    create_table :invoice_lines do |t|
      t.integer :invoice_id
      t.integer :line_no
      t.text :product_code
      t.integer :quantity
      t.decimal :retail_price
      t.decimal :subtotal
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
