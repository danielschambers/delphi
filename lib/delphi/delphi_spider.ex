defmodule DelphiSpider do
  import Ecto.Query

  def delphi_spider do
    
  end

  def fill_the_data_table do
    QueryController.search
    |> Enum.map(fn (x) -> ScraperController.scrape_page(x) end )
  end

end

# point at url
#  scrape url
#  scrape data
# scrape urls
#  scrape data
