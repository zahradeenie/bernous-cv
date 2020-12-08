defmodule BernousCvWeb.PageLive do
  use BernousCvWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :gluten, 0)}
  end

  @impl true
  def handle_event("increase", _, socket) do
    socket = update(socket, :gluten, &min(&1 + 10, 100))
    {:noreply, socket}
  end

  @impl true
  def handle_event("decrease", _, socket) do
    socket = update(socket, :gluten, &max(&1 - 10, 0))
    {:noreply, socket}
  end
end
