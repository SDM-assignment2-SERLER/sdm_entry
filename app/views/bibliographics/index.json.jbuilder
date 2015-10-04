json.array!(@bibliographics) do |bibliographic|
  json.extract! bibliographic, :id, :title, :author, :year, :source, :book, :publisher, :doi, :number, :page, :month
  json.url bibliographic_url(bibliographic, format: :json)
end
