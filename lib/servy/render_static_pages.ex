defmodule Servy.RenderStaticPages do
  @pages_path Path.expand("pages", File.cwd!())

  import Servy.FileHandler, only: [handle_file: 2]

  def render(conv, page) do
    @pages_path
    |> Path.join(page)
    |> File.read()
    |> handle_file(conv)
  end
end
