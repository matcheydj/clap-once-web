class UsersController < ApplicationController
  def routing
    redirect_to '/dashboard'
  end

  def dashboard
    session[:page] = "dashboard"
    # response = ClaponceApiAdapter.index("<route to api>", { user: { id: session[:id] } }  )
    # @incidents = JSON.parse(response.body)['incidents']
    @incidents = [{ id: 2, type: "flood", description: "Flood in the SF", victims: [{ id: 2, name: "Jasper"},{id: 1, name: "Steve"}] }, { id: 1, type: "fire", description: "Fire in the San Jose", victims: [{id: 1, name: "Steve"}] }].as_json
  end

end
