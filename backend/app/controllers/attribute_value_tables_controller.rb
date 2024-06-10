class AttributeValueTablesController < ApplicationController
  before_action :set_attribute_value_table, only: %i[ show update destroy ]

  # GET /attribute_value_tables
  def index
    @attribute_value_tables = AttributeValueTable.all

    render json: @attribute_value_tables
  end

  # GET /attribute_value_tables/1
  def show
    render json: @attribute_value_table
  end

  # POST /attribute_value_tables
  def create
    @attribute_value_table = AttributeValueTable.new(attribute_value_table_params)

    if @attribute_value_table.save
      render json: @attribute_value_table, status: :created, location: @attribute_value_table
    else
      render json: @attribute_value_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attribute_value_tables/1
  def update
    if @attribute_value_table.update(attribute_value_table_params)
      render json: @attribute_value_table
    else
      render json: @attribute_value_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attribute_value_tables/1
  def destroy
    @attribute_value_table.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_value_table
      @attribute_value_table = AttributeValueTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attribute_value_table_params
      params.require(:attribute_value_table).permit(:question, :val_str, :value_int, :val_date, :val_boolean, :patient_id, :visit_id)
    end
end
