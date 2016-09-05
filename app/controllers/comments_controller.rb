class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate, :only =>  [:destroy , :update , :edit ,:add]
  before_filter :check_owner, :only =>  [:destroy , :update , :edit ]


  # POST /comments
  # POST /comments.json
  def create

    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id


    respond_to do |format|
      if @comment.save
        format.html { redirect_to  recipe_path( @comment.recipe_id ), notice: 'Votre commentaire à été correctement ajouté!' }
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to recipe_path(@comment.recipe_id ), notice: 'Votre commentaire à été correctement mis à jour!' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to recipe_path(@comment.recipe_id ) , notice: 'Commentaire  supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:title, :content, :user_id , :recipe_id)
    end


    def authenticate
      redirect_to signup_path , :notice => "Connectez-vous" unless current_user
    end

    def check_owner
      @comment = Comment.find(params[:id])
      redirect_to root_path , :notice => "Petit-coquin!" unless current_user == @comment.user
    end
end
