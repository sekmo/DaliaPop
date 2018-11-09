class AnswersController < ApplicationController
  before_action :set_answer, only: [:update, :destroy]
  # before_action :set_question, only: [:update, :destroy]


  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to @answer.question, notice: 'Answer was successfully created.'
    else
      render template: "questions/show"
    end
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer.question, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to question_url(@answer.question), notice: 'Answer was successfully destroyed.'
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # def set_question
    #   @question = Question.find(params[:question_id])
    # end

    def answer_params
      params.require(:answer).permit(:body, :question_id, :user_id)
    end
end
