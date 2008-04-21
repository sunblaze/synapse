class GuardsController < ApplicationController
  # GET /guards
  # GET /guards.xml
  def index
    @guards = Guard.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @guards }
    end
  end

  # GET /guards/1
  # GET /guards/1.xml
  def show
    @guard = Guard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @guard }
    end
  end

  # GET /guards/new
  # GET /guards/new.xml
  def new
    @guard = Guard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @guard }
    end
  end

  # GET /guards/1/edit
  def edit
    @guard = Guard.find(params[:id])
  end

  # POST /guards
  # POST /guards.xml
  def create
    @guard = Guard.new(params[:guard])

    respond_to do |format|
      if @guard.save
        flash[:notice] = 'Guard was successfully created.'
        format.html { redirect_to(@guard) }
        format.xml  { render :xml => @guard, :status => :created, :location => @guard }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @guard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /guards/1
  # PUT /guards/1.xml
  def update
    @guard = Guard.find(params[:id])

    respond_to do |format|
      if @guard.update_attributes(params[:guard])
        flash[:notice] = 'Guard was successfully updated.'
        format.html { redirect_to(@guard) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @guard.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /guards/1
  # DELETE /guards/1.xml
  def destroy
    @guard = Guard.find(params[:id])
    @guard.destroy

    respond_to do |format|
      format.html { redirect_to(guards_url) }
      format.xml  { head :ok }
    end
  end
end
