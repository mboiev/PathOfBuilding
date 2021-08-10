--
-- export skill costs data
--

local out = io.open("../Data/Costs.lua", "w")
out:write('-- This file is automatically generated, do not edit!\n')
out:write('-- Skill costs data (c) Grinding Gear Games\n\n')
out:write('return {\n')

for c in dat("CostTypes"):Rows() do
	out:write('\t[', c._rowIndex, '] = {\n')
	out:write('\t\tResource = "', tostring(c.Resource), '",\n')
	out:write('\t\tStat = ', c.Stat and ('"'..tostring(c.Stat.Id)..'"') or tostring(c.Stat), ',\n')
	out:write('\t\tResourceString = "', tostring(c.ResourceString), '",\n')
	out:write('\t},\n')
end

out:write('}\n')
out:close()

print("Skill costs data exported.")
