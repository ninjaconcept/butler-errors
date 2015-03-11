class ErrorsController < ApplicationController

  def not_found
    @page_title = "Seite wurde nicht gefunden (404)"
    render :status => 404
  end

  def unacceptable
    @page_title = "Interner Fehler (422)"
    render :status => 422
  end

  def server_error
    @page_title = "Interner Serverfehler (500)"
    render :status => 500
  end

end
