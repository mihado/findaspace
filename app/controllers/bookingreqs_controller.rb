class BookingreqsController < ApplicationController
  # GET /bookingreqs
  # GET /bookingreqs.json
  def index
    @bookingreqs = Bookingreq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookingreqs }
    end
  end

  # GET /bookingreqs/1
  # GET /bookingreqs/1.json
  def show
    @bookingreq = Bookingreq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookingreq }
    end
  end

  # GET /bookingreqs/new
  # GET /bookingreqs/new.json
  def new
    @bookingreq = Bookingreq.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bookingreq }
    end
  end

  # GET /bookingreqs/1/edit
  def edit
    @bookingreq = Bookingreq.find(params[:id])
  end

  # POST /bookingreqs
  # POST /bookingreqs.json
  def create
    @bookingreq = Bookingreq.new(params[:bookingreq])

    respond_to do |format|
      if @bookingreq.save
        format.html { redirect_to @bookingreq, notice: 'Bookingreq was successfully created.' }
        format.json { render json: @bookingreq, status: :created, location: @bookingreq }
      else
        format.html { render action: "new" }
        format.json { render json: @bookingreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookingreqs/1
  # PUT /bookingreqs/1.json
  def update
    @bookingreq = Bookingreq.find(params[:id])

    respond_to do |format|
      if @bookingreq.update_attributes(params[:bookingreq])
        format.html { redirect_to @bookingreq, notice: 'Bookingreq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bookingreq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookingreqs/1
  # DELETE /bookingreqs/1.json
  def destroy
    @bookingreq = Bookingreq.find(params[:id])
    @bookingreq.destroy

    respond_to do |format|
      format.html { redirect_to bookingreqs_url }
      format.json { head :no_content }
    end
  end
end
