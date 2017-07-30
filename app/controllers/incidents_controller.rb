class IncidentsController < ApplicationController
  before_action :page_location

  def index
    response = HTTParty.get("http://claponce-api.herokuapp.com/incidents")
    if response.code == 1
      @incidents = JSON.parse(response.body)['incidents']
    else
      @incidents = [{ id: 3, name: "Flash Flood", description: "Flood hits Silver Creek Area", affected_users: [{ id: 1, name: "Chinmay Banker"}] },
        { id: 2, name: "Earthquake", description: "Massive Earthquake hits SF", affected_users: [{ id: 1, name: "Chinmay Banker"}, {id: 2, name: "Joanna Joseph"}, { id: 3, name: "Roger Li"}] },
      { id: 1, name: "Fire", description: "4-Alarm fire erupts in Oakland Hills", affected_users: [{ id: 1, name: "Chinmay Banker"},{id: 2, name: "Joanna Joseph"},{ id: 3, name: "Roger Li"}]} ].as_json
    end
  end

  private

  def page_location
    session[:page] = 'incidents'
  end

end
