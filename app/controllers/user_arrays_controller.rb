class UserArraysController < ApplicationController
  # GET /user_arrays
  # GET /user_arrays.json
  def index
    @user_arrays = UserArray.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_arrays }
    end
  end

  # GET /user_arrays/1
  # GET /user_arrays/1.json
  def show
    @user_array = UserArray.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_array }
    end
  end

  # GET /user_arrays/new
  # GET /user_arrays/new.json
  def new
    @user_array = UserArray.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_array }
    end
  end

  # GET /user_arrays/1/edit
  def edit
    @user_array = UserArray.find(params[:id])
  end

  # POST /user_arrays
  # POST /user_arrays.json
  def create
    @user_array = UserArray.new(params[:user_array])

    respond_to do |format|
      if @user_array.save
        format.html { redirect_to @user_array, notice: 'User array was successfully created.' }
        format.json { render json: @user_array, status: :created, location: @user_array }
      else
        format.html { render action: "new" }
        format.json { render json: @user_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_arrays/1
  # PUT /user_arrays/1.json
  def update
    @user_array = UserArray.find(params[:id])

    respond_to do |format|
      if @user_array.update_attributes(params[:user_array])
        format.html { redirect_to @user_array, notice: 'User array was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_arrays/1
  # DELETE /user_arrays/1.json
  def destroy
    @user_array = UserArray.find(params[:id])
    @user_array.destroy

    respond_to do |format|
      format.html { redirect_to user_arrays_url }
      format.json { head :ok }
    end
  end
end
