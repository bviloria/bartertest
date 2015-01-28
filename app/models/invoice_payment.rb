class InvoicePayment < ActiveRecord::Base
  belongs_to :invoice
end
