class ClausesController < ApplicationController
  # GET /clauses
  # GET /clauses.xml
  def index
    @clauses = Clause.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clauses }
    end
  end

  # GET /clauses/1
  # GET /clauses/1.xml
  def show
    @clause = Clause.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clause }
    end
  end

  # GET /clauses/new
  # GET /clauses/new.xml
  def new
    @clause = Clause.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clause }
    end
  end

  # GET /clauses/1/edit
  def edit
    @clause = Clause.find(params[:id])
  end

  # POST /clauses
  # POST /clauses.xml
  def create
    @clause = Clause.new(params[:clause])

    respond_to do |format|
      if @clause.save
        flash[:notice] = 'Clause was successfully created.'
        format.html { redirect_to(@clause) }
        format.xml  { render :xml => @clause, :status => :created, :location => @clause }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clause.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clauses/1
  # PUT /clauses/1.xml
  def update
    @clause = Clause.find(params[:id])

    respond_to do |format|
      if @clause.update_attributes(params[:clause])
        flash[:notice] = 'Clause was successfully updated.'
        format.html { redirect_to(@clause) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clause.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clauses/1
  # DELETE /clauses/1.xml
  def destroy
    @clause = Clause.find(params[:id])
    @clause.destroy

    respond_to do |format|
      format.html { redirect_to(clauses_url) }
      format.xml  { head :ok }
    end
  end
end
