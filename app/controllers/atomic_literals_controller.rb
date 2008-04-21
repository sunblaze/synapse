class AtomicLiteralsController < ApplicationController
  # GET /atomic_literals
  # GET /atomic_literals.xml
  def index
    @atomic_literals = AtomicLiteral.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atomic_literals }
    end
  end

  # GET /atomic_literals/1
  # GET /atomic_literals/1.xml
  def show
    @atomic_literal = AtomicLiteral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atomic_literal }
    end
  end

  # GET /atomic_literals/new
  # GET /atomic_literals/new.xml
  def new
    @atomic_literal = AtomicLiteral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atomic_literal }
    end
  end

  # GET /atomic_literals/1/edit
  def edit
    @atomic_literal = AtomicLiteral.find(params[:id])
  end

  # POST /atomic_literals
  # POST /atomic_literals.xml
  def create
    @atomic_literal = AtomicLiteral.new(params[:atomic_literal])

    respond_to do |format|
      if @atomic_literal.save
        flash[:notice] = 'AtomicLiteral was successfully created.'
        format.html { redirect_to(@atomic_literal) }
        format.xml  { render :xml => @atomic_literal, :status => :created, :location => @atomic_literal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atomic_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atomic_literals/1
  # PUT /atomic_literals/1.xml
  def update
    @atomic_literal = AtomicLiteral.find(params[:id])

    respond_to do |format|
      if @atomic_literal.update_attributes(params[:atomic_literal])
        flash[:notice] = 'AtomicLiteral was successfully updated.'
        format.html { redirect_to(@atomic_literal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atomic_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atomic_literals/1
  # DELETE /atomic_literals/1.xml
  def destroy
    @atomic_literal = AtomicLiteral.find(params[:id])
    @atomic_literal.destroy

    respond_to do |format|
      format.html { redirect_to(atomic_literals_url) }
      format.xml  { head :ok }
    end
  end
end
