defmodule LiveTestWeb.PageLive do
  use LiveTestWeb, :live_view

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, assign(socket, selection: nil)}
  end

  @impl Phoenix.LiveView
  def handle_event("change", %{"selection" => selection} = params, socket) do
    IO.inspect({:event, "change", params})
    {:noreply, assign(socket, selection: selection)}
  end

  @impl Phoenix.LiveView
  def handle_event(other, params, socket) do
    IO.inspect({:event, other, params})
    {:noreply, socket}
  end
end
