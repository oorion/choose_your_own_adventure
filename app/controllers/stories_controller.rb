class StoriesController < ApplicationController
  def index
    @stories = Story.where(story_id: nil)
  end

  def new
    @story = Story.new
  end

  def create
    story = Story.create(story_params)
    redirect_to edit_story_path(story.id)
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
