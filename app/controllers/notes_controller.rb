class NotesController < ApplicationController
  respond_to :html,:json

  def index
    @notes = Note.all
    respond_with(@notes)
  end

  def show
    @note = Note.find(params[:id])
    respond_with(@note)
  end
end
