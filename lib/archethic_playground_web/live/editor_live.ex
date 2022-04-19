defmodule ArchethicPlaygroundWeb.EditorLive do
  @moduledoc false
  
  use Phoenix.LiveView
  
  def render(assigns) do
    ~H"""
    <div class="editor" phx-hook="MonacoEditor" id="monaco-editor">
    </div>    
    """
  end
  
  def mount(_params, _opts, socket) do
    {:ok, socket}
  end
  
  def handle_event("interpret", %{ "code" => "" }, socket) do
    {:noreply, socket}
  end
  
  def handle_event("interpret", %{"code" => code}, socket) do
    {:reply, %{status: "ok"}, socket}
  end
end
