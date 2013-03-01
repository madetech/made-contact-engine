require_dependency "contact/application_controller"

module Contact
  class CustomerCaresController < ApplicationController
    # GET /customer_cares
    # GET /customer_cares.json
    def index
      @customer_cares = CustomerCare.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @customer_cares }
      end
    end
  
    # GET /customer_cares/1
    # GET /customer_cares/1.json
    def show
      @customer_care = CustomerCare.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @customer_care }
      end
    end
  
    # GET /customer_cares/new
    # GET /customer_cares/new.json
    def new
      @customer_care = CustomerCare.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @customer_care }
      end
    end
  
    # GET /customer_cares/1/edit
    def edit
      @customer_care = CustomerCare.find(params[:id])
    end
  
    # POST /customer_cares
    # POST /customer_cares.json
    def create
      @customer_care = CustomerCare.new(params[:customer_care])
  
      respond_to do |format|
        if @customer_care.save
          format.html { redirect_to @customer_care, notice: 'Customer care was successfully created.' }
          format.json { render json: @customer_care, status: :created, location: @customer_care }
        else
          format.html { render action: "new" }
          format.json { render json: @customer_care.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /customer_cares/1
    # PUT /customer_cares/1.json
    def update
      @customer_care = CustomerCare.find(params[:id])
  
      respond_to do |format|
        if @customer_care.update_attributes(params[:customer_care])
          format.html { redirect_to @customer_care, notice: 'Customer care was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @customer_care.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /customer_cares/1
    # DELETE /customer_cares/1.json
    def destroy
      @customer_care = CustomerCare.find(params[:id])
      @customer_care.destroy
  
      respond_to do |format|
        format.html { redirect_to customer_cares_url }
        format.json { head :no_content }
      end
    end
  end
end
