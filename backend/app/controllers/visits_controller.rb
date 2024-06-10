class VisitsController < ApplicationController
  before_action :set_visit, only: %i[ show update destroy ]
  before_action :check_patient_existence, only: [:create ]

  # GET /visits
  def index
    puts '-----------------'
    puts 'hits back end'
    @visits = Visit.all

    render json: @visits
  end

  # GET /visits/1
  def show
    render json: @visit
  end

  def new
    puts 'hit?' 
    @attribute = AttributeValueTable.all
    puts 'all visit', @attribute
    render json: @attribute
  end

  # POST /visits
  def create
    # @visit = Visit.new(visit_params)

    # if @visit.save
    #   render json: @visit, status: :created, location: @visit
    # else
    #   render json: @visit.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /visits/1
  def update
    if @visit.update(visit_params)
      render json: @visit
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /visits/1
  def destroy
    @visit.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visit_params
      params.require(:visit).permit(:patient, :references, :visit_date)
    end

    #exist is an active record ORM library to check if it is is in db
    def patient_exists?(social)
      Patient.exists?(social: social)
    end

    def check_patient_existence
    
      print 'what is params[:social]', params[:social]
      if patient_exists?(params[:social])
        print('patient exist if case')
        redirect_to 'http://localhost:3002/visits/new' and return
      else  
        puts 'patients_exist false redirect now!'
        redirect_to 'http://localhost:3002/patients/new' and return
      end

    end
end
