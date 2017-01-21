class NotesController < ApplicationController
  respond_to :html, only: [:index]
  respond_to :json

  def index
    respond_with Note.all
  end

  def create
    respond_with Note.create(note_params)
  end

  def show
    respond_with note
  end

  def update
    respond_with note.update_attributes(note_params)
  end

  def destroy
    respond_with note
  end

  private

  def note
    Note.find(params[:id])
  end

  def note_params
    params.permit(:title, :content)
  end
end
