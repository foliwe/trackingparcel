require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get shipments_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_url
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post shipments_url, params: { shipment: { carrier_reference_number: @shipment.carrier_reference_number, comments: @shipment.comments, expected_delivery_date: @shipment.expected_delivery_date, pick_up_time: @shipment.pick_up_time, product: @shipment.product, quantity: @shipment.quantity, reciever_address: @shipment.reciever_address, shipper_address: @shipment.shipper_address, status: @shipment.status, total_freight: @shipment.total_freight, track_number: @shipment.track_number, weight: @shipment.weight } }
    end

    assert_redirected_to shipment_url(Shipment.last)
  end

  test "should show shipment" do
    get shipment_url(@shipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_url(@shipment)
    assert_response :success
  end

  test "should update shipment" do
    patch shipment_url(@shipment), params: { shipment: { carrier_reference_number: @shipment.carrier_reference_number, comments: @shipment.comments, expected_delivery_date: @shipment.expected_delivery_date, pick_up_time: @shipment.pick_up_time, product: @shipment.product, quantity: @shipment.quantity, reciever_address: @shipment.reciever_address, shipper_address: @shipment.shipper_address, status: @shipment.status, total_freight: @shipment.total_freight, track_number: @shipment.track_number, weight: @shipment.weight } }
    assert_redirected_to shipment_url(@shipment)
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete shipment_url(@shipment)
    end

    assert_redirected_to shipments_url
  end
end
