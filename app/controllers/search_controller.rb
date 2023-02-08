class SearchController < ApplicationController
  def show

    if params[:query].present?
      client = OpenAI::Client.new
      response = client.completions(
        parameters: {
          model: "text-davinci-001",
          prompt: params[:query],
          max_tokens: 255
        }
      )
      @response = convert_response(response["choices"].map { |c| c["text"]})

    end
  end

  private 

  def convert_response(response)
    a = response * " "
  end
end

