class HeadsController < ApplicationController
  # GET /heads
  # GET /heads.xml
  def index
    @heads = Head.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @heads }
    end
  end

  # GET /heads/1
  # GET /heads/1.xml
  def show
    @head = Head.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @head }
    end
  end

  # GET /heads/new
  # GET /heads/new.xml
  def new
    @head = Head.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @head }
    end
  end

  # GET /heads/1/edit
  def edit
    @head = Head.find(params[:id])
  end

  # POST /heads
  # POST /heads.xml
  def create
    @head = Head.new(params[:head])

    respond_to do |format|
      if @head.save
        flash[:notice] = 'Head was successfully created.'
        format.html { redirect_to(@head) }
        format.xml  { render :xml => @head, :status => :created, :location => @head }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @head.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /heads/1
  # PUT /heads/1.xml
  def update
    @head = Head.find(params[:id])

    respond_to do |format|
      if @head.update_attributes(params[:head])
        flash[:notice] = 'Head was successfully updated.'
        format.html { redirect_to(@head) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @head.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /heads/1
  # DELETE /heads/1.xml
  def destroy
    @head = Head.find(params[:id])
    @head.destroy

    respond_to do |format|
      format.html { redirect_to(heads_url) }
      format.xml  { head :ok }
    end
  end
end
