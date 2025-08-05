local space_age = false
if mods["space-age"] then
	space_age = true
end

-- logistics item-group
data.raw["item-subgroup"]["storage"].order="a"
data.raw["item-subgroup"]["belt"].order="ba"

if space_age then
	data:extend({
		{
			type = "item-subgroup",
			name = "underground-belt",
			group = "logistics",
			order = "bb"
		},
		{
			type = "item-subgroup",
			name = "splitter",
			group = "logistics",
			order = "bc"
		}
	})

	data.raw.item["underground-belt"].subgroup = "underground-belt"
	data.raw.item["fast-underground-belt"].subgroup = "underground-belt"
	data.raw.item["express-underground-belt"].subgroup = "underground-belt"
	data.raw.item["turbo-underground-belt"].subgroup = "underground-belt"

	data.raw.item["splitter"].subgroup = "splitter"
	data.raw.item["fast-splitter"].subgroup = "splitter"
	data.raw.item["express-splitter"].subgroup = "splitter"
	data.raw.item["turbo-splitter"].subgroup = "splitter"
end

data.raw["item-subgroup"]["inserter"].order="c"

data.raw["item-subgroup"]["logistic-network"].order="d"
	data.raw.item["storage-chest"].order = "aa"
	data.raw.item["passive-provider-chest"].order = "ab"
	data.raw.item["requester-chest"].order = "ac"
	data.raw.item["buffer-chest"].order = "ad"
	data.raw.item["active-provider-chest"].order = "ae"
	data.raw.item["roboport"].order = "b"
	data.raw.item["logistic-robot"].order = "ca"
	data.raw.item["construction-robot"].order = "cb"

data:extend({
	{
		type = "item-subgroup",
		name = "fluid-distribution",
		group = "logistics",
		order = "ea"
	},
	{
		type = "item-subgroup",
		name = "energy-distributnio",
		group = "logistics",
		order = "ec"
	}
})

data.raw.item["pipe"].subgroup = "fluid-distribution"
data.raw.item["pipe"].order = "aa"
data.raw.item["pipe-to-ground"].subgroup = "fluid-distribution"
data.raw.item["pipe-to-ground"].order = "ba"
data.raw.item["storage-tank"].subgroup = "fluid-distribution"
data.raw.item["storage-tank"].order = "ca"
data.raw.item["pump"].subgroup = "fluid-distribution"
data.raw.item["pump"].order = "da"

if mods["HotPipes"] then
	data.raw.item["insulated-pipe"].subgroup = "fluid-distribution"
	data.raw.item["insulated-pipe"].order = "ac"
end

data.raw["item-subgroup"]["energy-pipe-distribution"].order="eb"
if mods["k2-steel-pipes"] then
	data.raw.item["kr-steel-pipe"].order = "a"
	data.raw.item["kr-steel-pipe-to-ground"].order = "b"
	data.raw.item["kr-steel-pump"].order = "c"
	data.raw.recipe["kr-casting-steel-pipe"].order = "d"
	data.raw.recipe["kr-casting-steel-pipe-to-ground"].order = "e"
end

if space_age then
	data.raw.recipe["casting-pipe"].subgroup = "fluid-distribution"
	data.raw.recipe["casting-pipe"].order = "e"
	data.raw.recipe["casting-pipe-to-ground"].subgroup = "fluid-distribution"
	data.raw.recipe["casting-pipe-to-ground"].order = "f"
end

data.raw.item["small-electric-pole"].subgroup = "energy-distributnio"
data.raw.item["small-electric-pole"].order = "a"
data.raw.item["medium-electric-pole"].subgroup = "energy-distributnio"
data.raw.item["medium-electric-pole"].order = "b"
data.raw.item["big-electric-pole"].subgroup = "energy-distributnio"
data.raw.item["big-electric-pole"].order = "c"
data.raw.item["substation"].subgroup = "energy-distributnio"
data.raw.item["substation"].order = "d"

data.raw["item-subgroup"]["circuit-network"].order="f"
	data.raw.item["radar"].subgroup = "circuit-network"
	data.raw.recipe["radar"].subgroup = "circuit-network"
	data.raw.item["small-lamp"].order = "A"
	data.raw.recipe["small-lamp"].order = "A"
data.raw["item-subgroup"]["train-transport"].order="g"
data.raw["item-subgroup"]["transport"].order="h"
data.raw["item-subgroup"]["terrain"].order="ib"

if space_age then
	data:extend({
		{
			type = "item-subgroup",
			name = "paving",
			group = "logistics",
			order = "ia"
		},
		{
			type = "item-subgroup",
			name = "terraforming",
			group = "logistics",
			order = "ic"
		}
	})

	data.raw.item["stone-brick"].subgroup = "paving"
	data.raw.item["concrete"].subgroup = "paving"
	data.raw.item["hazard-concrete"].subgroup = "paving"
	data.raw.item["refined-concrete"].subgroup = "paving"
	data.raw.item["refined-hazard-concrete"].subgroup = "paving"

	data.raw.recipe["cliff-explosives"].subgroup = "terraforming"
	data.raw.recipe["cliff-explosives"].order = "a"
	data.raw.capsule["cliff-explosives"].subgroup = "terraforming"
	data.raw.capsule["cliff-explosives"].order = "a"
	
	if mods["Explosive Excavation"]then
		data.raw.item["blasting-charge"].subgroup = "terraforming"
		data.raw.item["blasting-charge"].order = "b"
	end
end

-- production item-group
data:extend({
	{
		type = "item-subgroup",
		name = "thermal-energy",
		group = "production",
		order = "ba"
	},
	{
		type = "item-subgroup",
		name = "energy-collectors",
		group = "production",
		order = "bb"
	}
})

data.raw.item["boiler"].subgroup = "thermal-energy"
data.raw.item["boiler"].order = "a"
data.raw.item["steam-engine"].subgroup = "thermal-energy"
data.raw.item["steam-engine"].order = "b"
data.raw.item["nuclear-reactor"].subgroup = "thermal-energy"
data.raw.item["nuclear-reactor"].order = "c"
data.raw.item["heat-pipe"].subgroup = "thermal-energy"
data.raw.item["heat-pipe"].order = "e"
data.raw.item["heat-exchanger"].subgroup = "thermal-energy"
data.raw.item["heat-exchanger"].order = "f"
data.raw.item["steam-turbine"].subgroup = "thermal-energy"
data.raw.item["steam-turbine"].order = "g"

data.raw.item["accumulator"].subgroup = "energy-collectors"
data.raw.item["accumulator"].order = "a"
data.raw.item["solar-panel"].subgroup = "energy-collectors"
data.raw.item["solar-panel"].order = "b"

if space_age then
	data.raw.item["lightning-rod"].subgroup = "energy-collectors"
	data.raw.item["lightning-rod"].order = "c"
	data.raw.item["lightning-collector"].subgroup = "energy-collectors"
	data.raw.item["lightning-collector"].order = "d"

	data.raw.item["heating-tower"].subgroup = "thermal-energy"
	data.raw.item["heating-tower"].order = "d"
end

data.raw["item-subgroup"]["energy"].order="bd"

if space_age then
	data.raw.item["agricultural-tower"].subgroup = "extraction-machine"
	data.raw.item["agricultural-tower"].order = "f"
end

data:extend({
	{
		type = "item-subgroup",
		name = "processing-machine",
		group = "production",
		order = "ea"
	}
})

	data.raw.item["oil-refinery"].subgroup = "processing-machine"
	data.raw.item["oil-refinery"].order = "a"
	data.raw.item["chemical-plant"].subgroup = "processing-machine"
	data.raw.item["chemical-plant"].order = "b"
	data.raw.item["centrifuge"].subgroup = "processing-machine"
	data.raw.item["centrifuge"].order = "c"

	if mods["quality"] then
		data.raw.item["recycler"].subgroup = "processing-machine"
		data.raw.item["recycler"].order = "d"
	end

if space_age then
data.raw["item-subgroup"]["production-machine"].order="eb"
	data.raw.item["electromagnetic-plant"].order = "d"
	data.raw.item["biochamber"].subgroup = "production-machine"
	data.raw.item["biochamber"].order = "e"
	data.raw.item["cryogenic-plant"].order = "f"
	data.raw.item["captive-biter-spawner"].subgroup = "production-machine"
	data.raw.item["captive-biter-spawner"].order = "g"
end

data:extend({
	{
		type = "item-subgroup",
		name = "lab",
		group = "production",
		order = "ed"
	}
})
data.raw.item["lab"].subgroup = "lab"

if space_age then
	data.raw.item["biolab"].subgroup = "lab"
end

-- Combat item-group
data.raw["item-subgroup"]["defensive-structure"].order="a"

	data.raw.item["radar"].order = "a"
	data.raw.recipe["radar"].order = "a"
	data.raw.item["stone-wall"].order = "b"
	data.raw.recipe["stone-wall"].order = "b"
	data.raw.item["gate"].order = "c"
	data.raw.recipe["gate"].order = "c"
	data.raw.item["land-mine"].order = "d"
	data.raw.recipe["land-mine"].order = "d"

data.raw["item-subgroup"]["turret"].order="b"
data.raw["item-subgroup"]["ammo"].order="c"

	data.raw.ammo["firearm-magazine"].order = "aa"
	data.raw.recipe["firearm-magazine"].order = "aa"
	data.raw.ammo["piercing-rounds-magazine"].order = "ab"
	data.raw.recipe["piercing-rounds-magazine"].order = "ab"
	data.raw.ammo["uranium-rounds-magazine"].order = "ac"
	data.raw.recipe["uranium-rounds-magazine"].order = "ac"

	data.raw.ammo["artillery-shell"].order = "b"
	data.raw.recipe["artillery-shell"].order = "b"

	if space_age then
		data.raw.ammo["rocket"].order = "ca"
		data.raw.recipe["rocket"].order = "ca"
		data.raw.ammo["explosive-rocket"].order = "cb"
		data.raw.recipe["explosive-rocket"].order = "cb"
		data.raw.ammo["atomic-bomb"].order = "cc"
		data.raw.recipe["atomic-bomb"].order = "cc"

		data.raw.ammo["capture-robot-rocket"].order = "d"
		data.raw.recipe["capture-robot-rocket"].order = "d"
		data.raw.ammo["railgun-ammo"].order = "e"
		data.raw.recipe["railgun-ammo"].order = "e"
	else
		data.raw.ammo["rocket"].subgroup = "gun-ammo"
		data.raw.ammo["rocket"].order = "ca"
		data.raw.recipe["rocket"].subgroup = "gun-ammo"
		data.raw.recipe["rocket"].order = "ca"
		data.raw.ammo["explosive-rocket"].subgroup = "gun-ammo"
		data.raw.ammo["explosive-rocket"].order = "cb"
		data.raw.recipe["explosive-rocket"].subgroup = "gun-ammo"
		data.raw.recipe["explosive-rocket"].order = "cb"
		data.raw.ammo["atomic-bomb"].subgroup = "gun-ammo"
		data.raw.ammo["atomic-bomb"].order = "cc"
		data.raw.recipe["atomic-bomb"].subgroup = "gun-ammo"
		data.raw.recipe["atomic-bomb"].order = "cc"
	end

data.raw["item-subgroup"]["gun"].order="d"

	data.raw.gun["pistol"].order = "aa"
	data.raw.recipe["pistol"].order = "aa"
	data.raw.gun["submachine-gun"].order = "ab"
	data.raw.recipe["submachine-gun"].order = "ab"
	data.raw.gun["shotgun"].order = "ba"
	data.raw.recipe["shotgun"].order = "ba"
	data.raw.gun["combat-shotgun"].order = "bb"
	data.raw.recipe["combat-shotgun"].order = "bb"
	data.raw.gun["flamethrower"].order = "c"
	data.raw.recipe["flamethrower"].order = "c"
	data.raw.gun["rocket-launcher"].order = "d"
	data.raw.recipe["rocket-launcher"].order = "d"

	if space_age then
		data.raw.gun["teslagun"].order = "e"
		data.raw.recipe["teslagun"].order = "e"
		data.raw.gun["railgun"].order = "f"
		data.raw.recipe["railgun"].order = "f"
	end

data:extend({
	{
		type = "item-subgroup",
		name = "gun-ammo",
		group = "combat",
		order = "e"
	}
})

	data.raw.ammo["shotgun-shell"].subgroup = "gun-ammo"
	data.raw.ammo["shotgun-shell"].order = "aa"
	data.raw.recipe["shotgun-shell"].subgroup = "gun-ammo"
	data.raw.recipe["shotgun-shell"].order = "aa"
	data.raw.ammo["piercing-shotgun-shell"].subgroup = "gun-ammo"
	data.raw.ammo["piercing-shotgun-shell"].order = "ab"
	data.raw.recipe["piercing-shotgun-shell"].subgroup = "gun-ammo"
	data.raw.recipe["piercing-shotgun-shell"].order = "ab"

	data.raw.ammo["flamethrower-ammo"].subgroup = "gun-ammo"
	data.raw.ammo["flamethrower-ammo"].order = "b"
	data.raw.recipe["flamethrower-ammo"].subgroup = "gun-ammo"
	data.raw.recipe["flamethrower-ammo"].order = "b"

	data.raw.ammo["cannon-shell"].subgroup = "gun-ammo"
	data.raw.ammo["cannon-shell"].order = "da"
	data.raw.recipe["cannon-shell"].subgroup = "gun-ammo"
	data.raw.recipe["cannon-shell"].order = "da"
	data.raw.ammo["explosive-cannon-shell"].subgroup = "gun-ammo"
	data.raw.ammo["explosive-cannon-shell"].order = "db"
	data.raw.recipe["explosive-cannon-shell"].subgroup = "gun-ammo"
	data.raw.recipe["explosive-cannon-shell"].order = "db"
	data.raw.ammo["uranium-cannon-shell"].subgroup = "gun-ammo"
	data.raw.ammo["uranium-cannon-shell"].order = "dc"
	data.raw.recipe["uranium-cannon-shell"].subgroup = "gun-ammo"
	data.raw.recipe["uranium-cannon-shell"].order = "dc"
	data.raw.ammo["explosive-uranium-cannon-shell"].subgroup = "gun-ammo"
	data.raw.ammo["explosive-uranium-cannon-shell"].order = "dd"
	data.raw.recipe["explosive-uranium-cannon-shell"].subgroup = "gun-ammo"
	data.raw.recipe["explosive-uranium-cannon-shell"].order = "dd"

	if space_age then
		data.raw.ammo["tesla-ammo"].subgroup = "gun-ammo"
		data.raw.ammo["tesla-ammo"].order = "e"
		data.raw.recipe["tesla-ammo"].subgroup = "gun-ammo"
		data.raw.recipe["tesla-ammo"].order = "e"
	end

data.raw["item-subgroup"]["capsule"].order="f"
data.raw["item-subgroup"]["armor"].order="g"
data.raw["item-subgroup"]["equipment"].order="ha"
data.raw["item-subgroup"]["utility-equipment"].order="hb"
data.raw["item-subgroup"]["military-equipment"].order="hc"