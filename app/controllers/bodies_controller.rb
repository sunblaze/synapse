class BodiesController < ApplicationController
  # GET /bodies
  # GET /bodies.xml
  def index
    @bodies = Body.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bodies }
    end
  end

  # GET /bodies/1
  # GET /bodies/1.xml
  def show
    @body = Body.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @body }
    end
  end

  # GET /bodies/new
  # GET /bodies/new.xml
  def new
    @body = Body.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @body }
    end
  end

  # GET /bodies/1/edit
  def edit
    @body = Body.find(params[:id])
  end

  # POST /bodies
  # POST /bodies.xml
  def create
    @body = Body.new(params[:body])

    respond_to do |format|
      if @body.save
        flash[:notice] = 'Body was successfully created.'
        format.html { redirect_to(@body) }
        format.xml  { render :xml => @body, :status => :created, :location => @body }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @body.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bodies/1
  # PUT /bodies/1.xml
  def update
    @body = Body.find(params[:id])

    respond_to do |format|
      if @body.update_attributes(params[:body])
        flash[:notice] = 'Body was successfully updated.'
        format.html { redirect_to(@body) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @body.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bodies/1
  # DELETE /bodies/1.xml
  def destroy
    @body = Body.find(params[:id])
    @body.destroy

    respond_to do |format|
      format.html { redirect_to(bodies_url) }
      format.xml  { head :ok }
    end
  end
end
