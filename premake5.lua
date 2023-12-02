project "ImGui"
  kind "StaticLib"
  language "C++"
  staticruntime "off"
  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  objdir("bin-int/" .. outputdir .. "/%{prj.name}")

  files {
    "imgui.h",
    "imconfig.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp"
  }

filter "system:windows"
  systemversion "latest"
  cppdialect "C++20"

filter "configurations:Debug"
  symbols "On"
filter "configurations:Release"
  symbols "Off"
  optimize "On"
filter "configurations:Dist"
  symbols "Off"
  optimize "Full"
