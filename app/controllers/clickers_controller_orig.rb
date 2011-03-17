class ClickersController < ApplicationController
  # GET /clickers
  # GET /clickers.xml
  def index
    	@clickers = Clicker.all			

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clickers }
    end
  end

  # GET /clickers/1
  # GET /clickers/1.xml
  def show
    @clicker = Clicker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clicker }
    end
  end

  # GET /clickers/new
  # GET /clickers/new.xml
  def new
		@clicker = Clicker.new			
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clicker }
    end
  end

  # GET /clickers/1/edit
  def edit
    @clicker = Clicker.find(params[:id])
  end

  # POST /clickers
  # POST /clickers.xml
  def create
    @clicker = Clicker.new(params[:clicker])

    respond_to do |format|
      if @clicker.save
        format.html { redirect_to(@clicker, :notice => 'Clicker was successfully created.') }
        format.xml  { render :xml => @clicker, :status => :created, :location => @clicker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clicker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clickers/1
  # PUT /clickers/1.xml
  def update
    @clicker = Clicker.find(params[:id])

    respond_to do |format|
      if @clicker.update_attributes(params[:clicker])
        format.html { redirect_to(@clicker, :notice => 'Clicker was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clicker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clickers/1
  # DELETE /clickers/1.xml
  def destroy
    @clicker = Clicker.find(params[:id])
    @clicker.destroy

    respond_to do |format|
      format.html { redirect_to(clickers_url) }
      format.xml  { head :ok }
    end
  end
end
