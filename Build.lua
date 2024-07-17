workspace "DGPlanner"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}-%{cfg.buildcfg}"

group "SATSolver"
	include "SATSolver/Build-Core.lua"
group ""

include "DGPlannerApp/Build-App.lua"