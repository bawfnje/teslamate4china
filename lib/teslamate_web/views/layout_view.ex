defmodule TeslaMateWeb.LayoutView do
  use TeslaMateWeb, :view

  dashboards =
    for dashboard_path <- Path.wildcard("grafana/dashboards/*.json") do
      # 检查文件名是否包含"cn"
      if not String.contains?(Path.basename(dashboard_path), ".cn.") do
      @external_resource Path.relative_to_cwd(dashboard_path)

        dashboard_path
        |> File.read!()
        |> Jason.decode!()
        |> Map.take(["title", "uid"])
      end
    end
  @dashboards Enum.sort_by(dashboards, & &1["title"])
  defp list_dashboards, do: @dashboards

  dashboardscn =
    for dashboard_path <- Path.wildcard("grafana/dashboards/*.cn.json") do
      @external_resource Path.relative_to_cwd(dashboard_path)

      dashboard_path
      |> File.read!()
      |> Jason.decode!()
      |> Map.take(["title", "uid"])
    end

  @dashboardscn Enum.sort_by(dashboardscn, & &1["title"])
  defp list_dashboards_cn, do: @dashboardscn
end
