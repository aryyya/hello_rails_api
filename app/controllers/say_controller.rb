class SayController < ApplicationController
  def hello
    @hello = Hello.new
    user = params[:user]
    if user
      response = @hello.to_json(user)
    else
      response = @hello.to_json("Rails")
    end
    render({
      json: response
    })
  end
end
