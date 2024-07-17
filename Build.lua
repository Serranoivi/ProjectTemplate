workspace "DGPlanner"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "DGPlannerApp"

OutputDir = "%{cfg.system}-%{cfg.architecture}-%{cfg.buildcfg}"

links {"opengl32.lib" }

group "Dependencies"
   include "vendor/imgui"
   include "vendor/glfw"
	
group "SATSolver"
	include "SATSolver/Build-Core.lua"
group ""

include "DGPlannerApp/Build-App.lua"