Citizen.CreateThread(function()
	while true do

		if IsIplActive("rc12b_fixed") then
			RequestIpl("gabz_pillbox_milo_")
			interiorID = GetInteriorAtCoords(311.2546, -592.4204, 42.32737)	
			
			if IsValidInterior(interiorID) then
				RemoveIpl("rc12b_fixed")
				RemoveIpl("rc12b_destroyed")
				RemoveIpl("rc12b_default")
				RemoveIpl("rc12b_hospitalinterior_lod")
				RemoveIpl("rc12b_hospitalinterior")

				RefreshInterior(interiorID)
			end
		end

		Wait(60 * 1000)
	end
end)