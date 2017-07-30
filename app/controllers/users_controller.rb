class UsersController < ApplicationController
  def routing
    redirect_to '/dashboard'
  end

  def dashboard
    session[:page] = "dashboard"
    response = HTTParty.get("http://claponce-api.herokuapp.com/incidents")
    if response.code == 1
      @incidents = JSON.parse(response.body)['incidents']
    else
      @incidents = [{ id: 3, name: "Flash Flood", description: "Flood hits Silver Creek Area", affected_users: [{ id: 1, name: "Chinmay Banker", phoneNumer: "415-555-5555"}, {id: 2, name: "Joanna Joseph", phoneNumer: "415-555-5550"}] },
        { id: 2, name: "Earthquake", description: "Massive Earthquake hits SF", affected_users: [{ id: 1, name: "Chinmay Banker", phoneNumer: "415-555-5555"}, {id: 2, name: "Joanna Joseph", phoneNumer: "415-555-5550"}] },
      { id: 1, name: "Fire", description: "4-Alarm fire erupts in Oakland Hills", affected_users: [{ id: 1, name: "Chinmay Banker", phoneNumer: "415-555-5555"},{id: 2, name: "Joanna Joseph", phoneNumer: "415-555-5550"},{ id: 3, name: "Roger Li", phoneNumer: "415-555-5552"}]} ].as_json
    end
  end

end
