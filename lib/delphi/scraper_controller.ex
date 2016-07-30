defmodule ScraperController do
  import Ecto.Query

  def scrape_page(url) do
    Scrape.article(url)
    |> criteria
    |> clause_match
  end

  defp criteria(data) do
    %Delphi.Database{title: data.title,
    description: data.description,
    fulltext: data.fulltext,
    url: data.url}
  end

  defp clause_match(data1) do
    {:ok, inserted_data} = Delphi.Repo.insert(data1)
  end

end
