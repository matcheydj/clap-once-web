class ContactsController < ApplicationController
  before_action :page_location

  def index
    # response = ClaponceApiAdapter.index("<route to api>", { user: { id: session[:id] } }  )
    # @incidents = JSON.parse(response.body)['incidents']
    @contacts = [{ id: 1, name: "Chinmay Banker", phoneNumber: "415-555-5555"},{id: 2, name: "Joanna Joseph", phoneNumber: "415-555-5550"},{ id: 3, name: "Roger Li", phoneNumber: "415-555-5552"}].as_json
  end

  private

  def page_location
    session[:page] = 'contacts'
  end
end
