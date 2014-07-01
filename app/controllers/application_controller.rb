class ApplicationController < ActionController::API

  before_action :set_program_current_id#, if: :current_student
  before_action :current_program

  def current_program
    # current_user.program
    Program.find(Program.current_id)
  end

  def set_program_current_id
    Program.current_id = 4
  end

end
