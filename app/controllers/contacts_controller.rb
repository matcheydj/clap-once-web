class ContactsController < ApplicationController
  before_action :page_location

  def index
    # response = ClaponceApiAdapter.index("<route to api>", { user: { id: session[:id] } }  )
    # @incidents = JSON.parse(response.body)['incidents']
    @contacts = [{ id: 2, name: "Jasper", phoneNumber: "4504504444"}, {id: 1, name: "Steve",  phoneNumber: "4504507444"}].as_json
  end

  private

  def page_location
    session[:page] = 'contacts'
  end
end
