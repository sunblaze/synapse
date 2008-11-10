class MawjewlsController < ApplicationController
  # GET /mawjewls
  # GET /mawjewls.xml
  def index
    @mawjewls = Mawjewl.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mawjewls }
    end
  end

  # GET /mawjewls/1
  # GET /mawjewls/1.xml
  def show
    @mawjewl = Mawjewl.find(params[:id])
    @contents = MawjewlContentForm.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mawjewl }
    end
  end

  # GET /mawjewls/new
  # GET /mawjewls/new.xml
  def new
    @mawjewl = Mawjewl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mawjewl }
    end
  end

  # GET /mawjewls/1/edit
  def edit
    @mawjewl = Mawjewl.find(params[:id])
  end

  # POST /mawjewls
  # POST /mawjewls.xml
  def create
    @mawjewl = Mawjewl.new(params[:mawjewl])

    respond_to do |format|
      if @mawjewl.save
        flash[:notice] = 'Mawjewl was successfully created.'
        format.html { redirect_to(@mawjewl) }
        format.xml  { render :xml => @mawjewl, :status => :created, :location => @mawjewl }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mawjewl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mawjewls/1
  # PUT /mawjewls/1.xml
  def update
    @mawjewl = Mawjewl.find(params[:id])

    respond_to do |format|
      if @mawjewl.update_attributes(params[:mawjewl])
        flash[:notice] = 'Mawjewl was successfully updated.'
        format.html { redirect_to(@mawjewl) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mawjewl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mawjewls/1
  # DELETE /mawjewls/1.xml
  def destroy
    @mawjewl = Mawjewl.find(params[:id])
    @mawjewl.destroy

    respond_to do |format|
      format.html { redirect_to(mawjewls_url) }
      format.xml  { head :ok }
    end
  end
end
