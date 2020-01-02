class Api::V1::InstructionsController < ApplicationController
  def index
    @instructions = Instruction.all
    render json: @instruction, status: 200
  end

  def new
    @instruction = Instruction.new
  end

  def show
    @instruction = Instruction.find(params[:id])
    render json: @instruction, status: 200
  end
  
  def create
    @instruction = Instruction.new(instruction_params)
    render json: @instruction, status: 200
  end

  def update
    @instruction = Instruction.find(params[:id])
    @instruction.update(instruction_params)
    render json: @instruction, status: 200
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.delete
    render json: {instructionId: @instruction.id}
  end

  private

  def instruction_params
    params.require(:instruction).permit(:title, :description)
  end
end
