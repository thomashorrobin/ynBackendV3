class ExecsController < ApplicationController
  before_action :set_exec, only: [:show, :edit, :update, :destroy]

  # GET /execs
  # GET /execs.json
  def index
    @execs = Exec.all
  end

  # GET /execs/1
  # GET /execs/1.json
  def show
  end

  # GET /execs/new
  def new
    @exec = Exec.new
  end

  # GET /execs/1/edit
  def edit
  end

  # POST /execs
  # POST /execs.json
  def create
    @exec = Exec.new(exec_params)

    respond_to do |format|
      if @exec.save
        format.html { redirect_to @exec, notice: 'Exec was successfully created.' }
        format.json { render :show, status: :created, location: @exec }
      else
        format.html { render :new }
        format.json { render json: @exec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /execs/1
  # PATCH/PUT /execs/1.json
  def update
    respond_to do |format|
      if @exec.update(exec_params)
        format.html { redirect_to @exec, notice: 'Exec was successfully updated.' }
        format.json { render :show, status: :ok, location: @exec }
      else
        format.html { render :edit }
        format.json { render json: @exec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /execs/1
  # DELETE /execs/1.json
  def destroy
    @exec.destroy
    respond_to do |format|
      format.html { redirect_to execs_url, notice: 'Exec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exec
      @exec = Exec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exec_params
      params.require(:exec).permit(:name)
    end
end
