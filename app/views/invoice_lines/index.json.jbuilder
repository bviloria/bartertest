json.array!(@invoice_lines) do |invoice_line|
  json.extract! invoice_line, :id, :invoice_id, :line_no, :product_code, :quantity, :retail_price, :subtotal, :invoice_id
  json.url invoice_line_url(invoice_line, format: :json)
end
