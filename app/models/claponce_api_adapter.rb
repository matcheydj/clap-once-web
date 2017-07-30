class ClaponceApiAdapter
  include HTTParty

  def self.index(route, data)
    self.get(route, query: { data: data.as_json(root: true) })
  end

end
