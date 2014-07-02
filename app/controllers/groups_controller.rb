class GroupsController < ApplicationController

  def index
    render json: Group.all
  end

  def create
    group = Group.new(group_params)

    if group.save
      render json: group
    else
      render json: group, status: 422
    end
  end

  def update
    group = Group.find(params[:id])
    if group.update(group_params)
      render json: group
    else
      render json: group, status: 422
    end
  end

  def destroy
    group = Group.find(params[:id])
    if group.destroy
      render json: group, status: 204
    else
      render json: group
    end
  end

  private
  def group_params
    params.require(:group).permit!
  end
end
