require "application_system_test_case"

class ShipmentsTest < ApplicationSystemTestCase
  setup do
    @shipment = shipments(:one)
  end

  test "visiting the index" do
    visit shipments_url
    assert_selector "h1", text: "Shipments"
  end

  test "creating a Shipment" do
    visit shipments_url
    click_on "New Shipment"

    fill_in "Carrier reference number", with: @shipment.carrier_reference_number
    fill_in "Comments", with: @shipment.comments
    fill_in "Expected delivery date", with: @shipment.expected_delivery_date
    fill_in "Pick up time", with: @shipment.pick_up_time
    fill_in "Product", with: @shipment.product
    fill_in "Quantity", with: @shipment.quantity
    fill_in "Reciever address", with: @shipment.reciever_address
    fill_in "Shipper address", with: @shipment.shipper_address
    fill_in "Status", with: @shipment.status
    fill_in "Total freight", with: @shipment.total_freight
    fill_in "Track number", with: @shipment.track_number
    fill_in "Weight", with: @shipment.weight
    click_on "Create Shipment"

    assert_text "Shipment was successfully created"
    click_on "Back"
  end

  test "updating a Shipment" do
    visit shipments_url
    click_on "Edit", match: :first

    fill_in "Carrier reference number", with: @shipment.carrier_reference_number
    fill_in "Comments", with: @shipment.comments
    fill_in "Expected delivery date", with: @shipment.expected_delivery_date
    fill_in "Pick up time", with: @shipment.pick_up_time
    fill_in "Product", with: @shipment.product
    fill_in "Quantity", with: @shipment.quantity
    fill_in "Reciever address", with: @shipment.reciever_address
    fill_in "Shipper address", with: @shipment.shipper_address
    fill_in "Status", with: @shipment.status
    fill_in "Total freight", with: @shipment.total_freight
    fill_in "Track number", with: @shipment.track_number
    fill_in "Weight", with: @shipment.weight
    click_on "Update Shipment"

    assert_text "Shipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipment" do
    visit shipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipment was successfully destroyed"
  end
end
