require_dependency "contact/application_controller"

module Contact
  class OfficeAddressesController < ApplicationController
    # GET /office_addresses
    # GET /office_addresses.json
    def index
      @office_addresses = OfficeAddress.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @office_addresses }
      end
    end
  
    # GET /office_addresses/1
    # GET /office_addresses/1.json
    def show
      @office_address = OfficeAddress.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @office_address }
      end
    end
  
    # GET /office_addresses/new
    # GET /office_addresses/new.json
    def new
      @office_address = OfficeAddress.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @office_address }
      end
    end
  
    # GET /office_addresses/1/edit
    def edit
      @office_address = OfficeAddress.find(params[:id])
    end
  
    # POST /office_addresses
    # POST /office_addresses.json
    def create
      @office_address = OfficeAddress.new(params[:office_address])
  
      respond_to do |format|
        if @office_address.save
          format.html { redirect_to @office_address, notice: 'Office address was successfully created.' }
          format.json { render json: @office_address, status: :created, location: @office_address }
        else
          format.html { render action: "new" }
          format.json { render json: @office_address.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /office_addresses/1
    # PUT /office_addresses/1.json
    def update
      @office_address = OfficeAddress.find(params[:id])
  
      respond_to do |format|
        if @office_address.update_attributes(params[:office_address])
          format.html { redirect_to @office_address, notice: 'Office address was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @office_address.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /office_addresses/1
    # DELETE /office_addresses/1.json
    def destroy
      @office_address = OfficeAddress.find(params[:id])
      @office_address.destroy
  
      respond_to do |format|
        format.html { redirect_to office_addresses_url }
        format.json { head :no_content }
      end
    end
  end
end
