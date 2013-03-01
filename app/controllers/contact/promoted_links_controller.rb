require_dependency "contact/application_controller"

module Contact
  class PromotedLinksController < ApplicationController
    # GET /promoted_links
    # GET /promoted_links.json
    def index
      @promoted_links = PromotedLink.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @promoted_links }
      end
    end
  
    # GET /promoted_links/1
    # GET /promoted_links/1.json
    def show
      @promoted_link = PromotedLink.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @promoted_link }
      end
    end
  
    # GET /promoted_links/new
    # GET /promoted_links/new.json
    def new
      @promoted_link = PromotedLink.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @promoted_link }
      end
    end
  
    # GET /promoted_links/1/edit
    def edit
      @promoted_link = PromotedLink.find(params[:id])
    end
  
    # POST /promoted_links
    # POST /promoted_links.json
    def create
      @promoted_link = PromotedLink.new(params[:promoted_link])
  
      respond_to do |format|
        if @promoted_link.save
          format.html { redirect_to @promoted_link, notice: 'Promoted link was successfully created.' }
          format.json { render json: @promoted_link, status: :created, location: @promoted_link }
        else
          format.html { render action: "new" }
          format.json { render json: @promoted_link.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /promoted_links/1
    # PUT /promoted_links/1.json
    def update
      @promoted_link = PromotedLink.find(params[:id])
  
      respond_to do |format|
        if @promoted_link.update_attributes(params[:promoted_link])
          format.html { redirect_to @promoted_link, notice: 'Promoted link was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @promoted_link.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /promoted_links/1
    # DELETE /promoted_links/1.json
    def destroy
      @promoted_link = PromotedLink.find(params[:id])
      @promoted_link.destroy
  
      respond_to do |format|
        format.html { redirect_to promoted_links_url }
        format.json { head :no_content }
      end
    end
  end
end
