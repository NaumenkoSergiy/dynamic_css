class StylesheetsController < ApplicationController
  caches_page :show # magic happens here

  def show
    @stylesheet = current_user.stylesheet
    respond_to do |format|
      format.html # regular ERB template
      format.css { render :text => @stylesheet.contents, :content_type => "text/css" }
    end
  end
  # the rest is your typical RESTful controller, 
  # just remember to expire the cache when the stylesheet changes
end