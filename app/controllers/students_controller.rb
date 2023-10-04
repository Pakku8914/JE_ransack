class StudentsController < ApplicationController
  def index
    @q = Student.ransack(params[:q])
    @students = @q.result(distinct: true)
  end

  def search
    @q = Student.ransack(search_params)
    @students = @q.result(distinct: true)
  end

  private
  def search_params
    # permit!は，すべてのパラメータを取得する
    params.require(:q).permit!
  end
end
