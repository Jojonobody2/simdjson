project "simdjson"
	kind "StaticLib"
	language "C++"
  cppdialect "C++17"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
 		"singleheader/simdjson.cpp"
	}

	filter "system:linux"
		pic "On"

		systemversion "latest"

	filter "system:windows"
		systemversion "latest"

		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
