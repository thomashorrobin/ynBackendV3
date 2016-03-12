class ExecMembersController < ApplicationController
  before_action :set_exec_member, only: [:show, :edit, :update, :destroy]

  # GET /exec_members
  # GET /exec_members.json
  def index
    @exec_members = ExecMember.all
  end

  # GET /exec_members/1
  # GET /exec_members/1.json
  def show
  end

  # GET /exec_members/new
  def new
    @exec_member = ExecMember.new
  end

  # GET /exec_members/1/edit
  def edit
  end

  # POST /exec_members
  # POST /exec_members.json
  def create
    @exec_member = ExecMember.new(exec_member_params)

    respond_to do |format|
      if @exec_member.save
        format.html { redirect_to @exec_member, notice: 'Exec member was successfully created.' }
        format.json { render :show, status: :created, location: @exec_member }
      else
        format.html { render :new }
        format.json { render json: @exec_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exec_members/1
  # PATCH/PUT /exec_members/1.json
  def update
    respond_to do |format|
      if @exec_member.update(exec_member_params)
        format.html { redirect_to @exec_member, notice: 'Exec member was successfully updated.' }
        format.json { render :show, status: :ok, location: @exec_member }
      else
        format.html { render :edit }
        format.json { render json: @exec_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exec_members/1
  # DELETE /exec_members/1.json
  def destroy
    @exec_member.destroy
    respond_to do |format|
      format.html { redirect_to exec_members_url, notice: 'Exec member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exec_member
      @exec_member = ExecMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exec_member_params
      params.require(:exec_member).permit(:possition, :Exec_id, :Individual_id)
    end
end
