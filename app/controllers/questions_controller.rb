class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.new
    @questions.title = params[:questions][:title]
    @questions.body = params[:questions][:body]
    if @questions.save
      flash[:notice] = "Post was saved."
      redirect_to @questions
    else
      flash.now[:alert] = "There was an error saving the question. Please try again."
      render :new
    end
  end

  def show
    @questions = Question.find(params[:id])
  end

  def edit
    @questions = Question.find(params[:id])
  end

  def update
    @questions = Question.find(params[:id])
    @questions.title = params[:questions][:title]
    @questions.body = params[:questions][:body]

    if @questions.save
      flash[:notice] = "Question was updated."
      redirect_to @questions
    else
      flash.now[:alert] = "There was an error saving the question. Please try again."
      render :edit
    end
  end

  def destroy
    @questions = Question.find(params[:id])

    if @questions.destroy
      flash[:notice] = "\"#{@questions.title}\" was deleted successfully."
      redirect_to posts_path
    else
      flash.now[:alert] = "There was an error deleting the question."
      render :show
    end
  end
end