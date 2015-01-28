class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :id
      t.integer :terminal_id
      t.integer :transaction_id
      t.integer :origin_invoice_id
      t.text :site_code
      t.text :transaction_code
      t.text :type_code
      t.text :document_no
      t.text :status

      t.timestamps
    end
  end
end
