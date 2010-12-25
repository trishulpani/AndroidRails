class LeaveDetailsController < ApplicationController
  # GET /leave_details
  # GET /leave_details.xml
  def index
    @leave_details = LeaveDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leave_details }
    end
  end

  # GET /leave_details/1
  # GET /leave_details/1.xml
  def show
    @leave_detail = LeaveDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leave_detail }
      format.json  { render :json => @leave_detail }
    end
  end

  # GET /leave_details/new
  # GET /leave_details/new.xml
  def new
    @leave_detail = LeaveDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leave_detail }
      format.json { render :json => @leave_detail }
    end
  end

  # GET /leave_details/1/edit
  def edit
    @leave_detail = LeaveDetail.find(params[:id])
  end

  # POST /leave_details
  # POST /leave_details.xml
  def create
    @leave_detail = LeaveDetail.new(params[:leave_detail])

    respond_to do |format|
      if @leave_detail.save
        format.html { redirect_to(@leave_detail, :notice => 'Leave detail was successfully created.') }
        format.xml  { render :xml => @leave_detail, :status => :created, :location => @leave_detail }
        format.json { render :json => @leave_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leave_detail.errors, :status => :unprocessable_entity }
        format.json { render :json => @leave_detail }
      end
    end
  end

  # PUT /leave_details/1
  # PUT /leave_details/1.xml
  def update
    @leave_detail = LeaveDetail.find(params[:id])

    respond_to do |format|
      if @leave_detail.update_attributes(params[:leave_detail])
        format.html { redirect_to(@leave_detail, :notice => 'Leave detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leave_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_details/1
  # DELETE /leave_details/1.xml
  def destroy
    @leave_detail = LeaveDetail.find(params[:id])
    @leave_detail.destroy

    respond_to do |format|
      format.html { redirect_to(leave_details_url) }
      format.xml  { head :ok }
    end
  end
end
