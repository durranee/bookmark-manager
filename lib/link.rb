class Link
attr_reader :links

  def initialize
    @links = ["www.google.co.uk", "www.bbc.com", "www.cnn.com"]
  end

  def all
    links
  end
end
