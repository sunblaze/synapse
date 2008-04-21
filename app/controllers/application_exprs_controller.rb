class ApplicationExprsController < ApplicationController
  # GET /application_exprs
  # GET /application_exprs.xml
  def index
    @application_exprs = ApplicationExpr.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @application_exprs }
    end
  end

  # GET /application_exprs/1
  # GET /application_exprs/1.xml
  def show
    @application_expr = ApplicationExpr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @application_expr }
    end
  end

  # GET /application_exprs/new
  # GET /application_exprs/new.xml
  def new
    @application_expr = ApplicationExpr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @application_expr }
    end
  end

  # GET /application_exprs/1/edit
  def edit
    @application_expr = ApplicationExpr.find(params[:id])
  end

  # POST /application_exprs
  # POST /application_exprs.xml
  def create
    @application_expr = ApplicationExpr.new(params[:application_expr])

    respond_to do |format|
      if @application_expr.save
        flash[:notice] = 'ApplicationExpr was successfully created.'
        format.html { redirect_to(@application_expr) }
        format.xml  { render :xml => @application_expr, :status => :created, :location => @application_expr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @application_expr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /application_exprs/1
  # PUT /application_exprs/1.xml
  def update
    @application_expr = ApplicationExpr.find(params[:id])

    respond_to do |format|
      if @application_expr.update_attributes(params[:application_expr])
        flash[:notice] = 'ApplicationExpr was successfully updated.'
        format.html { redirect_to(@application_expr) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @application_expr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /application_exprs/1
  # DELETE /application_exprs/1.xml
  def destroy
    @application_expr = ApplicationExpr.find(params[:id])
    @application_expr.destroy

    respond_to do |format|
      format.html { redirect_to(application_exprs_url) }
      format.xml  { head :ok }
    end
  end
end
