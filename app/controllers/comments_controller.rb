class CommentsController < InheritedResources::Base

before_filter :get_spot

  # GET /comments/new
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html
    end
  end

  private
    def get_spot
      @spot = Spot.find(params[:spot_id])
    end    
end