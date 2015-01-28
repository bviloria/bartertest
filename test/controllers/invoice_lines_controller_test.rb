require 'test_helper'

class InvoiceLinesControllerTest < ActionController::TestCase
  setup do
    @invoice_line = invoice_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_line" do
    assert_difference('InvoiceLine.count') do
      post :create, invoice_line: { invoice_id: @invoice_line.invoice_id, invoice_id: @invoice_line.invoice_id, line_no: @invoice_line.line_no, product_code: @invoice_line.product_code, quantity: @invoice_line.quantity, retail_price: @invoice_line.retail_price, subtotal: @invoice_line.subtotal }
    end

    assert_redirected_to invoice_line_path(assigns(:invoice_line))
  end

  test "should show invoice_line" do
    get :show, id: @invoice_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_line
    assert_response :success
  end

  test "should update invoice_line" do
    patch :update, id: @invoice_line, invoice_line: { invoice_id: @invoice_line.invoice_id, invoice_id: @invoice_line.invoice_id, line_no: @invoice_line.line_no, product_code: @invoice_line.product_code, quantity: @invoice_line.quantity, retail_price: @invoice_line.retail_price, subtotal: @invoice_line.subtotal }
    assert_redirected_to invoice_line_path(assigns(:invoice_line))
  end

  test "should destroy invoice_line" do
    assert_difference('InvoiceLine.count', -1) do
      delete :destroy, id: @invoice_line
    end

    assert_redirected_to invoice_lines_path
  end
end
