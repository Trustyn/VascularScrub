class NotesController < ApplicationController
     
  def new
    @note = Note.new
    #@note.form.build
    @btnText = "Add"
  end
  
  
  def create
    @note = Note.new(note_params)
    if @note.save
      flash.notice = "Note Added"
      redirect_to @note
    else
      render 'new'
    end
  end
  
  
  def show
    if @note = Note.find(params[:id])
  end
  
  
  def index
    @page_title = "All Notes"
    @notes = Note.all
  end
  
 
  def edit
    @page_title = "Edit note"
    @note = Note.find(params[:id])
    @btnText = "Update"
    
  end
  
  
  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      flash.alert = "Note Updated"
      redirect_to @note
    else
      render 'edit'
    end
  end
  
  def destroy
    Note.find(params[:id]).destroy
    flash.alert = "note Deleted"
    redirect_to root_url
    
  end
  
  
  
#PRIVATE########################################################################  
private
  
  def note_params
    params.require(:note).permit(:name,
                                 :content)
  end
  
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?@user
  end
  
end


