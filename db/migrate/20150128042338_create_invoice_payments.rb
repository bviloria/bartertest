class CreateInvoicePayments < ActiveRecord::Migration
  def change
    create_table :invoice_payments do |t|
      t.integer :invoice_id
      t.integer :line_no
      t.text :payment_type_code
      t.decimal :amount
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
