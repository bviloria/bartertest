require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { document_no: @invoice.document_no, id: @invoice.id, origin_invoice_id: @invoice.origin_invoice_id, site_code: @invoice.site_code, status: @invoice.status, terminal_id: @invoice.terminal_id, transaction_code: @invoice.transaction_code, transaction_id: @invoice.transaction_id, type_code: @invoice.type_code }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { document_no: @invoice.document_no, id: @invoice.id, origin_invoice_id: @invoice.origin_invoice_id, site_code: @invoice.site_code, status: @invoice.status, terminal_id: @invoice.terminal_id, transaction_code: @invoice.transaction_code, transaction_id: @invoice.transaction_id, type_code: @invoice.type_code }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end