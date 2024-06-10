require "test_helper"

class AttributeValueTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute_value_table = attribute_value_tables(:one)
  end

  test "should get index" do
    get attribute_value_tables_url, as: :json
    assert_response :success
  end

  test "should create attribute_value_table" do
    assert_difference("AttributeValueTable.count") do
      post attribute_value_tables_url, params: { attribute_value_table: { patient_id: @attribute_value_table.patient_id, question: @attribute_value_table.question, val_boolean: @attribute_value_table.val_boolean, val_date: @attribute_value_table.val_date, val_str: @attribute_value_table.val_str, value_int: @attribute_value_table.value_int, visit_id: @attribute_value_table.visit_id } }, as: :json
    end

    assert_response :created
  end

  test "should show attribute_value_table" do
    get attribute_value_table_url(@attribute_value_table), as: :json
    assert_response :success
  end

  test "should update attribute_value_table" do
    patch attribute_value_table_url(@attribute_value_table), params: { attribute_value_table: { patient_id: @attribute_value_table.patient_id, question: @attribute_value_table.question, val_boolean: @attribute_value_table.val_boolean, val_date: @attribute_value_table.val_date, val_str: @attribute_value_table.val_str, value_int: @attribute_value_table.value_int, visit_id: @attribute_value_table.visit_id } }, as: :json
    assert_response :success
  end

  test "should destroy attribute_value_table" do
    assert_difference("AttributeValueTable.count", -1) do
      delete attribute_value_table_url(@attribute_value_table), as: :json
    end

    assert_response :no_content
  end
end
