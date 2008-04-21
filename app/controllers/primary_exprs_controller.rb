class PrimaryExprsController < ApplicationController
  # GET /primary_exprs
  # GET /primary_exprs.xml
  def index
    @primary_exprs = PrimaryExpr.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @primary_exprs }
    end
  end

  # GET /primary_exprs/1
  # GET /primary_exprs/1.xml
  def show
    @primary_expr = PrimaryExpr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @primary_expr }
    end
  end

  # GET /primary_exprs/new
  # GET /primary_exprs/new.xml
  def new
    @primary_expr = PrimaryExpr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @primary_expr }
    end
  end

  # GET /primary_exprs/1/edit
  def edit
    @primary_expr = PrimaryExpr.find(params[:id])
  end

  # POST /primary_exprs
  # POST /primary_exprs.xml
  def create
    @primary_expr = PrimaryExpr.new(params[:primary_expr])

    respond_to do |format|
      if @primary_expr.save
        flash[:notice] = 'PrimaryExpr was successfully created.'
        format.html { redirect_to(@primary_expr) }
        format.xml  { render :xml => @primary_expr, :status => :created, :location => @primary_expr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @primary_expr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /primary_exprs/1
  # PUT /primary_exprs/1.xml
  def update
    @primary_expr = PrimaryExpr.find(params[:id])

    respond_to do |format|
      if @primary_expr.update_attributes(params[:primary_expr])
        flash[:notice] = 'PrimaryExpr was successfully updated.'
        format.html { redirect_to(@primary_expr) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @primary_expr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_exprs/1
  # DELETE /primary_exprs/1.xml
  def destroy
    @primary_expr = PrimaryExpr.find(params[:id])
    @primary_expr.destroy

    respond_to do |format|
      format.html { redirect_to(primary_exprs_url) }
      format.xml  { head :ok }
    end
  end
end
