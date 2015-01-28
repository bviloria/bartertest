json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :id, :terminal_id, :transaction_id, :origin_invoice_id, :site_code, :transaction_code, :type_code, :document_no, :status
  json.url invoice_url(invoice, format: :json)
end
