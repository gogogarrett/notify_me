class ProgramsController < ApplicationController

  def index
    render json: Program.all
  end

  def create
    program = Program.new(program_params)

    if program.save
      render json: program
    else
      render json: program, status: 422
    end
  end

  def update
    program = Program.find(params[:id])
    if program.update(program_params)
      render json: program
    else
      render json: program, status: 422
    end
  end

  def destroy
    program = Program.find(params[:id])
    if program.destroy
      render json: program, status: 204
    else
      render json: program
    end
  end

  private
  def program_params
    params.require(:program).permit!
  end
end
