class ErrorsController < ApplicationController

  def not_found
    @page_title = "Page not found (404)"
    render :status => 404
  end

  def unacceptable
    @page_title = "Something weird happened (422)"
    render :status => 422
  end

  def server_error
    @page_title = "Internal server error (500)"
    render :status => 500
  end

end
