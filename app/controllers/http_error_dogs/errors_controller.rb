require "http_error_dogs"

module HttpErrorDogs
  class ErrorsController < ::ApplicationController

    def show
      return unless HttpErrorDogs.codes == :all
      return if HttpErrorDogs.codes.is_a?(Array) && !HttpErrorDogs.codes.include?(status_code)
      html = HttpErrorDogs.html
      html = html.call status_code if html.is_a?(Proc)
      render inline: html, layout: HttpErrorDogs.layout
    end

    def status_code
      params[:code] || 500
    end
  end
end