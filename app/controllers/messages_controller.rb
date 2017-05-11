class MessagesController < ApplicationController
  before_action :set_story

  def create
    message = @story.messages.new(message_params)
    message.save
    redirect_to @story
  end

  def edit
    @message = Message.find(params[:id])
  end

  def destroy
    @message = Message.find(params[:id])

    @message.destroy
    respond_to do |format|
      format.html { redirect_to @story, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    @message = Message.find(params[:id])
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def left
    @message = Message.find(params[:id])
    @message.left = true
    @message.save
  end


  def right
    @message = Message.find(params[:id])
    @message.right = true
    @message.save
  end

  def is_correct
    @message = Message.find(params[:id])
    @message.is_correct = true
    @message.save
  end

  def is_correct2
    @message = Message.find(params[:id])
    @message.is_correct2 = true
    @message.save
  end



  private

  def set_story
    @story = Story.find(params[:story_id])
  end

  def message_params
    params.require(:message).permit(:message1, :message2, :image, :image2, :popup, :mp3, :choice_img1, :choice_img2 , :first_choice, :second_choice, :is_correct, :is_correct2, :choice_popup, :popup_audio, :end_message, :ending_image, :ending, :ending_audio)
  end
end