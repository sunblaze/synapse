class StringLiteralsController < ApplicationController
  # GET /string_literals
  # GET /string_literals.xml
  def index
    @string_literals = StringLiteral.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @string_literals }
    end
  end

  # GET /string_literals/1
  # GET /string_literals/1.xml
  def show
    @string_literal = StringLiteral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @string_literal }
    end
  end

  # GET /string_literals/new
  # GET /string_literals/new.xml
  def new
    @string_literal = StringLiteral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @string_literal }
    end
  end

  # GET /string_literals/1/edit
  def edit
    @string_literal = StringLiteral.find(params[:id])
  end

  # POST /string_literals
  # POST /string_literals.xml
  def create
    @string_literal = StringLiteral.new(params[:string_literal])

    respond_to do |format|
      if @string_literal.save
        flash[:notice] = 'StringLiteral was successfully created.'
        format.html { redirect_to(@string_literal) }
        format.xml  { render :xml => @string_literal, :status => :created, :location => @string_literal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @string_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /string_literals/1
  # PUT /string_literals/1.xml
  def update
    @string_literal = StringLiteral.find(params[:id])

    respond_to do |format|
      if @string_literal.update_attributes(params[:string_literal])
        flash[:notice] = 'StringLiteral was successfully updated.'
        format.html { redirect_to(@string_literal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @string_literal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /string_literals/1
  # DELETE /string_literals/1.xml
  def destroy
    @string_literal = StringLiteral.find(params[:id])
    @string_literal.destroy

    respond_to do |format|
      format.html { redirect_to(string_literals_url) }
      format.xml  { head :ok }
    end
  end
end
