class AtomLiteralsController < ApplicationController
  # GET /atom_literals
  # GET /atom_literals.xml
  def index
    @atom_literals = AtomLiteral.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @atom_literals }
    end
  end

  # GET /atom_literals/1
  # GET /atom_literals/1.xml
  def show
    @atom_literal = AtomLiteral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @atom_literal }
    end
  end

  # GET /atom_literals/new
  # GET /atom_literals/new.xml
  def new
    @atom_literal = AtomLiteral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @atom_literal }
    end
  end

  # GET /atom_literals/1/edit
  def edit
    @atom_literal = AtomLiteral.find(params[:id])
  end

  # POST /atom_literals
  # POST /atom_literals.xml
  def create
    @atom_literal = AtomLiteral.new(params[:atom_literal])

    respond_to do |format|
      if @atom_literal.save
        flash[:notice] = 'AtomLiteral was successfully created.'
        format.html { redirect_to(@atom_literal) }
        format.xml  { render :xml => @atom_literal, :status => :created, :location => @atom_literal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @atom_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /atom_literals/1
  # PUT /atom_literals/1.xml
  def update
    @atom_literal = AtomLiteral.find(params[:id])

    respond_to do |format|
      if @atom_literal.update_attributes(params[:atom_literal])
        flash[:notice] = 'AtomLiteral was successfully updated.'
        format.html { redirect_to(@atom_literal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @atom_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /atom_literals/1
  # DELETE /atom_literals/1.xml
  def destroy
    @atom_literal = AtomLiteral.find(params[:id])
    @atom_literal.destroy

    respond_to do |format|
      format.html { redirect_to(atom_literals_url) }
      format.xml  { head :ok }
    end
  end
end
