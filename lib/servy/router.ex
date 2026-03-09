defmodule Servy.Router do
  alias Servy.Conv
  alias Servy.BearController
  alias Servy.RenderStaticPages
  alias Servy.Api.BearController, as: ApiBearController
  # alias Servy.VideoCam
  alias Servy.PledgeController

  def route(%Conv{method: "GET", path: "/wildthings"} = conv) do
    %{conv | status: 200, resp_body: "Bears, Lions, Tigers"}
  end

  def route(%Conv{method: "GET", path: "/about"} = conv) do
    RenderStaticPages.render(conv, "about.html")
  end

  def route(%Conv{method: "GET", path: "/contact"} = conv) do
    RenderStaticPages.render(conv, "contact.html")
  end

  def route(%Conv{method: "GET", path: "/bears/new"} = conv) do
    RenderStaticPages.render(conv, "form.html")
  end

  def route(%Conv{method: "GET", path: "/api/bears"} = conv) do
    ApiBearController.index(conv)
  end

  def route(%Conv{method: "GET", path: "/bears"} = conv) do
    BearController.index(conv)
  end

  def route(%Conv{method: "GET", path: "/bears/" <> id} = conv) do
    params = Map.put(conv.params, "id", id)
    BearController.show(conv, params)
  end

  def route(%Conv{method: "POST", path: "/api/bears"} = conv) do
    ApiBearController.create(conv, conv.params)
  end

  def route(%Conv{method: "POST", path: "/bears"} = conv) do
    BearController.create(conv, conv.params)
  end

  def route(%Conv{method: "DELETE", path: "/bears/" <> _id} = conv) do
    BearController.delete(conv, conv.params)
  end

  def route(%Conv{method: "GET", path: "/sensors"} = conv) do
    sensor_data = Servy.SensorServer.get_sensor_data()

    %{conv | status: 200, resp_body: inspect(sensor_data)}
  end

  def route(%Conv{method: "POST", path: "/pledges"} = conv) do
    PledgeController.create(conv, conv.params)
  end

  def route(%Conv{method: "GET", path: "/pledges"} = conv) do
    PledgeController.index(conv)
  end

  def route(%Conv{method: _method, path: path} = conv) do
    %{conv | status: 404, resp_body: "No #{path} here!"}
  end
end
