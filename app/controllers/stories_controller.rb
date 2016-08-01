class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    binding.pry
    Story.create(story_params)
    redirect_to stories_path
  end

  def edit
    @story = Story.find(params[:id])
    @continuation_story = Story.new
  end

  private

  def story_params
    params.require(:story).permit(:title, :text, :story_id)
  end
end
