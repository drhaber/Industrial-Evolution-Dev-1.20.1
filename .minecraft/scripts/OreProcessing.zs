

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

<recipetype:railcraft:rolling>.remove(<tag:items:forge:plates>);
<recipetype:create:pressing>.remove(<tag:items:forge:plates>);
<recipetype:create:pressing>.remove(<item:createdeco:zinc_sheet>);

<recipetype:embers:stamping>.removeAll();
<recipetype:immersiveengineering:alloy>.removeAll();
<recipetype:embers:mixing>.removeAll();
<recipetype:railcraft:blasting>.removeAll();
<recipetype:railcraft:crushing>.removeAll();
<recipetype:minecraft:campfire_cooking>.removeAll();
<recipetype:minecraft:smoking>.removeAll();
<recipetype:immersiveengineering:blast_furnace>.removeAll();
<recipetype:immersiveengineering:blast_furnace_fuel>.removeAll();

<recipetype:minecraft:crafting>.remove(<tag:items:forge:plates>);
//<recipetype:minecraft:crafting>.remove(<tag:items:forge:ingots>);

<recipetype:minecraft:smelting>.remove(<tag:items:forge:ingots>);
<recipetype:minecraft:blasting>.remove(<tag:items:forge:ingots>);
<recipetype:minecraft:smelting>.remove(<tag:items:forge:glass>);
<recipetype:minecraft:smelting>.remove(<tag:items:forge:nuggets>);
<recipetype:minecraft:blasting>.remove(<tag:items:forge:nuggets>);
<recipetype:minecraft:smelting>.remove(<tag:items:tfc:colored_glazed_terracotta>);
<recipetype:create:splashing>.remove(<tag:items:forge:nuggets>);
craftingTable.remove(<tag:items:forge:wires>);
<recipetype:create:mixing>.remove(<tag:items:forge:ingots>);

//<recipetype:create_dd:superheating>.remove(<tag:items:forge:ingots>);

<recipetype:minecraft:blasting>.remove(<item:sgjourney:pure_naquadah>);

<recipetype:railcraft:coking>.removeAll();
<recipetype:tfmg:coking>.removeAll();
<recipetype:tfmg:casting>.removeAll();

<recipetype:immersiveengineering:crusher>.removeByModid("tfc_ie_addon");
<recipetype:minecraft:smelting>.removeByModid("woodencog");
<recipetype:create:crushing>.removeByModid("woodencog");
<recipetype:tfc:knapping>.removeByModid("woodencog");
<recipetype:create:mixing>.removeByModid("woodencog");

<recipetype:create:cutting>.remove(<item:create:andesite_alloy>);
<recipetype:create:cutting>.remove(<item:tfc:metal/ingot/wrought_iron>);
<recipetype:create:cutting>.remove(<item:tfc:refined_iron_bloom>);
<recipetype:embers:melting>.removeAll();

<recipetype:create:compacting>.remove(<fluid:northstar:hydrocarbon>);

//craftingTable.remove(<item:minecraft:iron_nugget>);
craftingTable.removeByName("minecraft:iron_ingot_from_nuggets");
craftingTable.removeByName("minecraft:iron_nugget");

//craftingTable.removeByName("betterend:thallasium_ingot_from_nuggets");
//craftingTable.removeByName("betternether:cincinnasite_ingot");


craftingTable.removeByName("railcraft:bronze_ingot_crafted_with_ingots");
craftingTable.removeByName("railcraft:bronze_ingot_from_bronze_nugget");
craftingTable.removeByName("railcraft:bronze_ingot");
//craftingTable.removeByName("railcraft:bronze_block_from_bronze_ingot");
craftingTable.removeByName("railcraft:brass_ingot_crafted_with_ingots");
//craftingTable.removeByName("railcraft:brass_ingot_from_brass_nugget");
//craftingTable.removeByName("railcraft:brass_ingot");
//craftingTable.removeByName("railcraft:brass_block_from_brass_ingot");
//craftingTable.removeByName("railcraft:zinc_ingot_from_zinc_nugget");
//craftingTable.removeByName("railcraft:zinc_ingot");
//craftingTable.removeByName("railcraft:zinc_block_from_zinc_ingot");

//<recipetype:create:compacting>.removeByName("create_dd:compacting/steel_ingot");

<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/steel");
//<recipetype:immersiveengineering:arc_furnace>.removeByName("tfc_ie_addon:arc_furnace/steel");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/dust_iron");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/dust_steel");
<recipetype:immersiveengineering:arc_furnace>.removeByName("tfc_ie_addon:arc_furnace/bauxite");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/raw_block_aluminum");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/ore_aluminum");
<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/raw_ore_aluminum");
#<recipetype:create:crushing>.removeByName("create:crushing/aluminum_ore");
#<recipetype:create:crushing>.removeByName("create:crushing/raw_aluminum_ore");
#<recipetype:create:crushing>.removeByName("create:crushing/raw_aluminum_block");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/raw_block_aluminum");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/raw_ore_aluminum");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_aluminum");

craftingTable.addShapeless("handcrafted_wrought_iron_ingot_iron_nugget", <item:minecraft:iron_nugget>*9, [<item:tfc:metal/ingot/wrought_iron>]);
craftingTable.addShaped("handcrafted_iron_nugget_wrought_iron_ingot", <item:tfc:metal/ingot/wrought_iron>,[
    [<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>,<item:minecraft:iron_nugget>]]);  

/*
<item:minecraft:iron_nugget>
<item:minecraft:gold_nugget>
<item:botania:manasteel_nugget>
<item:botania:terrasteel_nugget>
<item:botania:elementium_nugget>
<item:create:zinc_nugget>
<item:create:brass_nugget>
<item:embers:dawnstone_nugget>
<item:immersiveengineering:nugget_copper>
<item:immersiveengineering:nugget_aluminum>
<item:immersiveengineering:nugget_lead>
<item:immersiveengineering:nugget_silver>
<item:immersiveengineering:nugget_nickel>
<item:immersiveengineering:nugget_uranium>
<item:immersiveengineering:nugget_constantan>
<item:immersiveengineering:nugget_electrum>
<item:immersiveengineering:nugget_steel>
<item:railcraft:tin_nugget>
<item:railcraft:bronze_nugget>
<item:railcraft:invar_nugget>
<item:sgjourney:naquadah_alloy_nugget>
<item:createdeco:netherite_nugget>
<item:createdeco:industrial_iron_nugget>
<item:vintageimprovements:vanadium_nugget>
<item:aether_redux:veridium_nugget>
<item:northstar:tungsten_nugget>
<item:betterend:thallasium_nugget>
<item:betterend:terminite_nugget>
<item:create:experience_nugget>
*/

//redstone
<recipetype:tfc:quern>.remove(<item:minecraft:redstone>);
<recipetype:create:milling>.remove(<item:minecraft:redstone>);
<recipetype:create:crushing>.remove(<item:minecraft:redstone>);
<recipetype:minecraft:blasting>.remove(<item:minecraft:redstone>);
<recipetype:minecraft:smelting>.remove(<item:minecraft:redstone>);
craftingTable.remove(<item:immersiveengineering:redstone_acid_bucket>);
<recipetype:tfc:barrel_instant>.removeByName("tfc_ie_addon:barrel/redstone_acid");
<recipetype:immersiveengineering:mixer>.removeByName("immersiveengineering:mixer/redstone_acid");

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("basin_cinnabar_redstone_sulfur_dioxide", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",
  "ingredients": [
    {
		"item": "tfc:ore/cinnabar"
    },
    {
      "fluid": "minecraft:water",
      "amount": 250
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "fluid": "vintageimprovements:sulfur_dioxide",
      "amount": 250
    },
    {
    "item": "minecraft:redstone",
    "count": 4
    }
  ]
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("basin_cryolite_redstone_acid", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",
  "ingredients": [
    {
		"item": "tfc:ore/cryolite"
    },
    {
      "fluid": "minecraft:water",
      "amount": 250
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "fluid": "immersiveengineering:redstone_acid",
      "amount": 250
    }
  ]
});

<recipetype:vintageimprovements:vacuumizing>.addJsonRecipe("redstone_acid_redstone", {
	"type":"vintageimprovements:vacuumizing",
  "heatRequirement": "superheated",
	"ingredients": [ 
    {
			"fluid": "immersiveengineering:redstone_acid",
			"amount": 100
		}
	],
	"results": [
		{
    "item": "minecraft:redstone",
    "count": 16
		}
	],
	"processingTime": 600
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("basin_redstone_sulfuric_acid", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",
  "ingredients": [
    {
		"tag": "tfc:redstone_ore"
    },
    {
      "fluid": "tfmg:sulfuric_acid",
      "amount": 250
    }
  ],
  "processingTime": 800,
  "results": [
    {
    "item": "minecraft:redstone",
    "count": 16
    }
  ]
});

<recipetype:tfc:pot>.addJsonRecipe("redstone_acid_pot_redstone", {
  "type": "tfc:pot",
  "ingredients": [],
  "fluid_ingredient": {
    "ingredient": "immersiveengineering:redstone_acid",
    "amount": 1000
  },
  "duration": 3000,
  "temperature": 600,
  "item_output": [
    {
      "item": "minecraft:redstone",
      "count": 10
    }
  ]
});

<recipetype:tfc:pot>.addJsonRecipe("cinnabar_pot_redstone_acid", {
  "type": "tfc:pot",
  "duration": 3000,
  "temperature": 600,
  "ingredients": [    
    {
      "item": "tfc:ore/cinnabar"
    },
    {
      "item": "tfc:ore/cinnabar"
    },
    {
      "item": "tfc:ore/cinnabar"
    },
    {
      "item": "tfc:ore/cinnabar"
    }
  ],
  "fluid_ingredient": {
    "ingredient": "minecraft:water",
    "amount": 1000
  },
  "fluid_output": {
    "fluid": "immersiveengineering:redstone_acid",
    "amount": 1000
  }
});


/*
<recipetype:pneumaticcraft:explosion_crafting>.addJsonRecipe("lumber_from_logs", {
  "type": "pneumaticcraft:explosion_crafting",
  "input": {
    "tag": "forge:crops/wheat"
  },
  "loss_rate": 50,
  "results": [
    {
      "item": "pneumaticcraft:wheat_flour"
    }
  ]
});
*/

//Ingots
var tfcMetals = ["bismuth","bismuth_bronze","black_bronze","black_steel","blue_steel","brass","bronze","cast_iron","copper","gold","high_carbon_black_steel","high_carbon_blue_steel","high_carbon_red_steel","high_carbon_steel","nickel","pig_iron","red_steel","rose_gold","silver","steel","sterling_silver","tin","unknown","weak_blue_steel","weak_red_steel","weak_steel","wrought_iron","zinc"];
for metal in tfcMetals{   
<recipetype:embers:stamping>.addJsonRecipe("embers_stamp_" + metal + "ingot", {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 100,
     "name": ("tfc:metal/"+ metal ) as string
    },
  "output": (<item:tfc:metal/ingot/${metal}> as IData),
  "stamp": (<item:tfc:ceramic/fire_ingot_mold> as IData)
}
);

}

//TFC Tools
var tfcTools = ["axe_head","chisel_head","hammer_head","hoe_head","javelin_head","knife_blade","mace_head","pickaxe_head","propick_head","saw_blade","scythe_blade","shovel_head","sword_blade"];
for toolhead in tfcTools{   
    var tfcToolMetals = ["bismuth_bronze","black_bronze","bronze","copper"];
    for ToolMetal in tfcToolMetals{
    <recipetype:embers:stamping>.addJsonRecipe("embers_stamp_" + ToolMetal + toolhead, {
      "type": "embers:stamping",
        "fluid": {
         "amount" : 100,
         "name": ("tfc:metal/"+ ToolMetal ) as string
        },
      "output": (<item:tfc:metal/${toolhead}/${ToolMetal}> as IData),
      "stamp": (<item:tfc:ceramic/${toolhead}_mold> as IData)
}
);
}}

function addEmbersStamping(fluidIn as IFluidStack, itemOut as IItemStack, itemStamp as IItemStack) as void { 
<recipetype:embers:stamping>.addJsonRecipe("embers_ingot_stamp_" + itemOut.descriptionId + itemStamp.descriptionId, {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 100,
     "name": fluidIn.fluid.registryName as string
    },
  "output": (itemOut as IData),
  "stamp": (itemStamp as IData)
}
);
}

//bell_mold
addEmbersStamping(<fluid:tfc:metal/gold>,<item:minecraft:bell>,<item:tfc:ceramic/bell_mold>);
addEmbersStamping(<fluid:tfc:metal/bronze>,<item:tfc:bronze_bell>,<item:tfc:ceramic/bell_mold>);
addEmbersStamping(<fluid:tfc:metal/brass>,<item:tfc:brass_bell>,<item:tfc:ceramic/bell_mold>);

//AE2 Press Plates

addEmbersStamping(<fluid:tfc:metal/wrought_iron>,<item:ae2:calculation_processor_press>,<item:kubejs:fired_material_calculation_processor_press>);
addEmbersStamping(<fluid:tfc:metal/wrought_iron>,<item:ae2:engineering_processor_press>,<item:kubejs:fired_material_engineering_processor_press>);
addEmbersStamping(<fluid:tfc:metal/wrought_iron>,<item:ae2:logic_processor_press>,<item:kubejs:fired_material_logic_processor_press>);
addEmbersStamping(<fluid:tfc:metal/wrought_iron>,<item:ae2:silicon_press>,<item:kubejs:fired_material_silicon_press>);

//print((<item:tfc:ore/small_native_copper> as IData).getAsString());

function addOrecrushing(ItemIn as string, itemOut as string) as void { 
<recipetype:create:crushing>.addJsonRecipe("create_ore_crush_" + ItemIn.replace(":","_") + itemOut.replace(":","_"), {
    "type": "create:crushing",
    "ingredients": [
    	{
    		"item": ItemIn
    	}
    ],
	"results": [
		{
			"item": itemOut,
			"count": 2
		}
	],
	"processingTime": 300
}
);
<recipetype:embers:stamping>.addJsonRecipe("embers_ore_stamp_" + ItemIn.replace(":","_") + itemOut.replace(":","_"), {
  "type": "embers:stamping",
    "input": {
     "item": ItemIn
    },
	"output":
		{
			"item": itemOut,
			"count": 2
		},
  "stamp": (<item:embers:flat_stamp> as IData)
}
);
}
function addIEOrecrushing(ItemIn as string, itemOut as string, qtyO as int, Chance as float) as void { 
<recipetype:immersiveengineering:crusher>.addJsonRecipe("ie_ore_crush_" + ItemIn.replace(":","_") + itemOut.replace(":","_"), {
  "type": "immersiveengineering:crusher",
  "energy": 2048,
    "input": {
        "item": ItemIn
        },
	"result": {
			"item": itemOut,
            "count": qtyO
    },
  "secondaries": [
    {
      "chance": Chance,
      "output": {
        "item": itemOut,
      }
    }
  ]
}
);
}

var Ores = ["native_copper","native_gold","hematite","native_silver","cassiterite","bismuthinite","garnierite","malachite","magnetite","limonite","sphalerite","tetrahedrite"];
for ore in Ores{
addOrecrushing("tfc:ore/poor_" + ore,"tfc:ore/small_" + ore);
addOrecrushing("tfc:ore/normal_" + ore,"tfc:ore/poor_" + ore);
addOrecrushing("tfc:ore/rich_" + ore,"tfc:ore/normal_" + ore);

addIEOrecrushing("tfc:ore/poor_" + ore,"tfc:ore/small_" + ore,2,0);
addIEOrecrushing("tfc:ore/normal_" + ore,"tfc:ore/small_" + ore,3,0.1);
addIEOrecrushing("tfc:ore/rich_" + ore,"tfc:ore/small_" + ore,4,0.5);

}

function addEmbersmelting(fluidOut as string, ItemIn as string, Qty0 as int) as void { 
<recipetype:embers:melting>.addJsonRecipe("embers_ore_melt_" + ItemIn.replace(":","_") + fluidOut.replace(":","_"), {
  "type": "embers:melting",
  "input": {
    "item": ItemIn
  },
  "output": {
    "amount": Qty0,
    "fluid": fluidOut
  }
}
);
}
/*
function addcreatemelting(fluidOut as string, ItemIn as string, Qty0 as int) as void { 
<recipetype:create:mixing>.addJsonRecipe("create_ore_melting_" + ItemIn.replace(":","_") + fluidOut.replace(":","_"), {
    "type": "create:mixing",
    "ingredients": [
        {
            "item": ItemIn
        }
    ],
    "results": [
        {
            "fluid": fluidOut,
            "amount": Qty0
        }
    ],
    "heatRequirement": "heated"
}
);
}*/
function addcreatemetallurgymelting(fluidOut as string, ItemIn as string, Qty0 as int) as void { 
<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("create_metallurgy_melting_" + ItemIn.replace(":","_") + fluidOut.replace(":","_"),{
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "superheated",  
  "ingredients": [
    {
      "item": ItemIn
    }
  ],
  "processingTime": 180,
  "results": [
    {
      "fluid": fluidOut,
      "amount": Qty0
    }
  ]
});
}

function addarcfurnacesmelting(ItemOut as string, ItemIn as string, QtyI as int) as void { 
<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("arc_furnace_smelting" + ItemIn.replace(":","_") + ItemOut.replace(":","_"), {
  "type": "immersiveengineering:arc_furnace",
  "input": {
    "base_ingredient": {
      "item": ItemIn
    },
    "count": QtyI
  },
  "results": [
    {
      "item": ItemOut
    }
  ],
  "additives": [],
  "time": 100,
  "energy": 25600
}
);
}
function addTFCoresmelting(FluidOut as string, ItemIn as string, AmountO as int, Temp as int) as void { 
<recipetype:tfc:heating>.addJsonRecipe("tfc_smelting" + ItemIn.replace(":","_") + FluidOut.replace(":","_"), {
  "__comment__": "This file was automatically created by mcresources",
  "type": "tfc:heating",
  "ingredient": {
    "item": ItemIn
  },
  "result_fluid": {
    "fluid": FluidOut,
    "amount": AmountO
  },
  "temperature": Temp
});}

addTFCoresmelting("tfc:metal/cast_iron","create:crushed_raw_iron",5,1535);
addTFCoresmelting("tfc:metal/gold","create:crushed_raw_gold",5,1060);
addTFCoresmelting("tfc:metal/copper","create:crushed_raw_copper",5,1080);
addTFCoresmelting("tfc:metal/zinc","create:crushed_raw_zinc",5,420);
addTFCoresmelting("tfc:metal/silver","create:crushed_raw_silver",5,961);
addTFCoresmelting("tfc:metal/tin","create:crushed_raw_tin",5,230);
addTFCoresmelting("tfc_ie_addon:metal/lead","create:crushed_raw_lead",5,500);
addTFCoresmelting("tfc:metal/nickel","create:crushed_raw_nickel",5,1453);

//<item:create:crushed_raw_iron>.addTooltip("Melts into 5 mB Cast Iron");
//<item:create:crushed_raw_gold>.addTooltip("Melts into 5 mB Gold");
//<item:create:crushed_raw_copper>.addTooltip("Melts into 5 mB Copper");
//<item:create:crushed_raw_zinc>.addTooltip("Melts into 5 mB Zinc");
//<item:create:crushed_raw_silver>.addTooltip("Melts into 5 mB Silver");
//<item:create:crushed_raw_tin>.addTooltip("Melts into 5 mB Tin");
//<item:create:crushed_raw_lead>.addTooltip("Melts into 5 mB Lead");
//<item:create:crushed_raw_aluminum>.addTooltip("Melts into 5 mB Aluminum");
//<item:create:crushed_raw_uranium>.addTooltip("Melts into 5 mB Uranium");
//<item:create:crushed_raw_nickel>.addTooltip("Melts into 5 mB Nickel");

addarcfurnacesmelting("tfc:metal/ingot/cast_iron","create:crushed_raw_iron",20);
addarcfurnacesmelting("tfc:metal/ingot/gold","create:crushed_raw_gold",20);
addarcfurnacesmelting("tfc:metal/ingot/copper","create:crushed_raw_copper",20);
addarcfurnacesmelting("tfc:metal/ingot/zinc","create:crushed_raw_zinc",20);
addarcfurnacesmelting("tfc:metal/ingot/silver","create:crushed_raw_silver",20);
addarcfurnacesmelting("tfc:metal/ingot/tin","create:crushed_raw_tin",20);
addarcfurnacesmelting("immersiveengineering:ingot_lead","create:crushed_raw_lead",20);
addarcfurnacesmelting("immersiveengineering:ingot_aluminum","create:crushed_raw_aluminum",20);
addarcfurnacesmelting("immersiveengineering:ingot_uranium","create:crushed_raw_uranium",20);
addarcfurnacesmelting("tfc:metal/ingot/nickel","create:crushed_raw_nickel",20);

addarcfurnacesmelting("tfc:metal/ingot/bismuth","tfc:ore/small_bismuthinite",10);
                      //==================================================
addcreatemetallurgymelting("tfc:metal/cast_iron","create:crushed_raw_iron",5);
addcreatemetallurgymelting("tfc:metal/gold","create:crushed_raw_gold",5);
addcreatemetallurgymelting("tfc:metal/copper","create:crushed_raw_copper",5);
addcreatemetallurgymelting("tfc:metal/zinc","create:crushed_raw_zinc",5);
addcreatemetallurgymelting("tfc:metal/silver","create:crushed_raw_silver",5);
addcreatemetallurgymelting("tfc:metal/tin","create:crushed_raw_tin",5);
addcreatemetallurgymelting("tfc_ie_addon:metal/lead","create:crushed_raw_lead",5);
//addcreatemetallurgymelting("tfc_ie_addon:metal/aluminum","create:crushed_raw_aluminum",5);
//addcreatemetallurgymelting("tfc_ie_addon:metal/uranium","create:crushed_raw_uranium",5);
addcreatemetallurgymelting("tfc:metal/nickel","create:crushed_raw_nickel",5);

addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/small_native_copper",10);
addcreatemetallurgymelting("tfc:metal/gold","tfc:ore/small_native_gold",10);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/small_hematite",10);
addcreatemetallurgymelting("tfc:metal/silver","tfc:ore/small_native_silver",10);
addcreatemetallurgymelting("tfc:metal/tin","tfc:ore/small_cassiterite",10);
addcreatemetallurgymelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite",10);
addcreatemetallurgymelting("tfc:metal/nickel","tfc:ore/small_garnierite",10);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/small_malachite",10);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/small_magnetite",10);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/small_limonite",10);
addcreatemetallurgymelting("tfc:metal/zinc","tfc:ore/small_sphalerite",10);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/small_tetrahedrite",10);

addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/poor_native_copper",15);
addcreatemetallurgymelting("tfc:metal/gold","tfc:ore/poor_native_gold",15);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/poor_hematite",15);
addcreatemetallurgymelting("tfc:metal/silver","tfc:ore/poor_native_silver",15);
addcreatemetallurgymelting("tfc:metal/tin","tfc:ore/poor_cassiterite",15);
addcreatemetallurgymelting("tfc:metal/bismuth","tfc:ore/poor_bismuthinite",15);
addcreatemetallurgymelting("tfc:metal/nickel","tfc:ore/poor_garnierite",15);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/poor_malachite",15);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/poor_magnetite",15);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/poor_limonite",15);
addcreatemetallurgymelting("tfc:metal/zinc","tfc:ore/poor_sphalerite",15);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/poor_tetrahedrite",15);

addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/normal_native_copper",25);
addcreatemetallurgymelting("tfc:metal/gold","tfc:ore/normal_native_gold",25);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/normal_hematite",25);
addcreatemetallurgymelting("tfc:metal/silver","tfc:ore/normal_native_silver",25);
addcreatemetallurgymelting("tfc:metal/tin","tfc:ore/normal_cassiterite",25);
addcreatemetallurgymelting("tfc:metal/bismuth","tfc:ore/normal_bismuthinite",25);
addcreatemetallurgymelting("tfc:metal/nickel","tfc:ore/normal_garnierite",25);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/normal_malachite",25);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/normal_magnetite",25);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/normal_limonite",25);
addcreatemetallurgymelting("tfc:metal/zinc","tfc:ore/normal_sphalerite",25);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/normal_tetrahedrite",25);

addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/rich_native_copper",35);
addcreatemetallurgymelting("tfc:metal/gold","tfc:ore/rich_native_gold",35);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/rich_hematite",35);
addcreatemetallurgymelting("tfc:metal/silver","tfc:ore/rich_native_silver",35);
addcreatemetallurgymelting("tfc:metal/tin","tfc:ore/rich_cassiterite",35);
addcreatemetallurgymelting("tfc:metal/bismuth","tfc:ore/rich_bismuthinite",35);
addcreatemetallurgymelting("tfc:metal/nickel","tfc:ore/rich_garnierite",35);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/rich_malachite",35);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/rich_magnetite",35);
addcreatemetallurgymelting("tfc:metal/cast_iron","tfc:ore/rich_limonite",35);
addcreatemetallurgymelting("tfc:metal/zinc","tfc:ore/rich_sphalerite",35);
addcreatemetallurgymelting("tfc:metal/copper","tfc:ore/rich_tetrahedrite",35);
                    //==================================================
addEmbersmelting("tfc:metal/gold","create:crushed_raw_gold",5);
addEmbersmelting("tfc:metal/copper","create:crushed_raw_copper",5);
addEmbersmelting("tfc:metal/zinc","create:crushed_raw_zinc",5);
addEmbersmelting("tfc:metal/silver","create:crushed_raw_silver",5);
addEmbersmelting("tfc:metal/tin","create:crushed_raw_tin",5);
addEmbersmelting("tfc_ie_addon:metal/lead","create:crushed_raw_lead",5);
//addEmbersmelting("tfc_ie_addon:metal/aluminum","create:crushed_raw_aluminum",5);
//addEmbersmelting("tfc_ie_addon:metal/uranium","create:crushed_raw_uranium",5);
addEmbersmelting("tfc:metal/nickel","create:crushed_raw_nickel",5);

addEmbersmelting("tfc:metal/copper","tfc:ore/small_native_copper",10);
addEmbersmelting("tfc:metal/gold","tfc:ore/small_native_gold",10);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_hematite",10);
addEmbersmelting("tfc:metal/silver","tfc:ore/small_native_silver",10);
addEmbersmelting("tfc:metal/tin","tfc:ore/small_cassiterite",10);
addEmbersmelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite",10);
addEmbersmelting("tfc:metal/nickel","tfc:ore/small_garnierite",10);
addEmbersmelting("tfc:metal/copper","tfc:ore/small_malachite",10);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_magnetite",10);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_limonite",10);
addEmbersmelting("tfc:metal/zinc","tfc:ore/small_sphalerite",10);
addEmbersmelting("tfc:metal/copper","tfc:ore/small_tetrahedrite",10);

addEmbersmelting("tfc:metal/copper","tfc:ore/poor_native_copper",15);
addEmbersmelting("tfc:metal/gold","tfc:ore/poor_native_gold",15);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/poor_hematite",15);
addEmbersmelting("tfc:metal/silver","tfc:ore/poor_native_silver",15);
addEmbersmelting("tfc:metal/tin","tfc:ore/poor_cassiterite",15);
addEmbersmelting("tfc:metal/bismuth","tfc:ore/poor_bismuthinite",15);
addEmbersmelting("tfc:metal/nickel","tfc:ore/poor_garnierite",15);
addEmbersmelting("tfc:metal/copper","tfc:ore/poor_malachite",15);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/poor_magnetite",15);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/poor_limonite",15);
addEmbersmelting("tfc:metal/zinc","tfc:ore/poor_sphalerite",15);
addEmbersmelting("tfc:metal/copper","tfc:ore/poor_tetrahedrite",15);

addEmbersmelting("tfc:metal/copper","tfc:ore/normal_native_copper",25);
addEmbersmelting("tfc:metal/gold","tfc:ore/normal_native_gold",25);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/normal_hematite",25);
addEmbersmelting("tfc:metal/silver","tfc:ore/normal_native_silver",25);
addEmbersmelting("tfc:metal/tin","tfc:ore/normal_cassiterite",25);
addEmbersmelting("tfc:metal/bismuth","tfc:ore/normal_bismuthinite",25);
addEmbersmelting("tfc:metal/nickel","tfc:ore/normal_garnierite",25);
addEmbersmelting("tfc:metal/copper","tfc:ore/normal_malachite",25);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/normal_magnetite",25);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/normal_limonite",25);
addEmbersmelting("tfc:metal/zinc","tfc:ore/normal_sphalerite",25);
addEmbersmelting("tfc:metal/copper","tfc:ore/normal_tetrahedrite",25);

addEmbersmelting("tfc:metal/copper","tfc:ore/rich_native_copper",35);
addEmbersmelting("tfc:metal/gold","tfc:ore/rich_native_gold",35);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/rich_hematite",35);
addEmbersmelting("tfc:metal/silver","tfc:ore/rich_native_silver",35);
addEmbersmelting("tfc:metal/tin","tfc:ore/rich_cassiterite",35);
addEmbersmelting("tfc:metal/bismuth","tfc:ore/rich_bismuthinite",35);
addEmbersmelting("tfc:metal/nickel","tfc:ore/rich_garnierite",35);
addEmbersmelting("tfc:metal/copper","tfc:ore/rich_malachite",35);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/rich_magnetite",35);
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/rich_limonite",35);
addEmbersmelting("tfc:metal/zinc","tfc:ore/rich_sphalerite",35);
addEmbersmelting("tfc:metal/copper","tfc:ore/rich_tetrahedrite",35);

<recipetype:immersiveengineering:arc_furnace>.addJsonRecipe("arc_furnace_wrought_iron_from_crushed_smelting", {
  "type": "immersiveengineering:arc_furnace",
  "results": [
    {
      "item": "tfc:metal/ingot/wrought_iron"
    }
  ],
  "additives": [
    {
      "tag": "forge:dusts/coal_coke"
    }
  ],
  "input": {
    "base_ingredient": {
      "item": "create:crushed_raw_iron"
    },
    "count": 20
  },
  "slag": {
    "tag": "forge:slag"
  },
  "time": 400,
  "energy": 204800
});

<recipetype:embers:melting>.addJsonRecipe("embers_wrought_iron_from_crushed_bonus_smelting", {
  "type": "embers:melting",
  "bonus": {
    "amount": 1,
    "fluid": "tfc:metal/wrought_iron"
  },
  "input": {
    "item": "create:crushed_raw_iron"
  },
  "output": {
    "amount": 5,
    "fluid": "tfc:metal/cast_iron"
  }
});
<recipetype:embers:melting>.addJsonRecipe("embers_wrought_iron_from_bloom_bonus_smelting", {
  "type": "embers:melting",
  "bonus": {
    "amount": 25,
    "fluid": "tfc:metal/wrought_iron"
  },
  "input": {
    "item": "tfc:raw_iron_bloom"
  },
  "output": {
    "amount": 75,
    "fluid": "tfmg:molten_slag"
  }
});

<recipetype:tfc:bloomery>.addJsonRecipe("wrought_iron_coke_bonus_smelting", {
  "type": "tfc:bloomery",
  "result": {
    "item": "tfc:raw_iron_bloom"
  },
  "fluid": {
    "ingredient": "tfc:metal/cast_iron",
    "amount": 50
  },
  "catalyst": {
    "ingredient": {
      "tag": "forge:coal_coke"
    }
  },
  "duration": 11250
});


addEmbersmelting("tfc:metal/wrought_iron","tfc:refined_iron_bloom",100);

addOrecrushing("tfc:ore/small_hematite","create:crushed_raw_iron");
addOrecrushing("tfc:ore/small_magnetite","create:crushed_raw_iron");
addOrecrushing("tfc:ore/small_limonite","create:crushed_raw_iron");
addOrecrushing("tfc:ore/small_native_gold","create:crushed_raw_gold");
addOrecrushing("tfc:ore/small_native_copper","create:crushed_raw_copper");
addOrecrushing("tfc:ore/small_malachite","create:crushed_raw_copper");
addOrecrushing("tfc:ore/small_tetrahedrite","create:crushed_raw_copper");
addOrecrushing("tfc:ore/small_sphalerite","create:crushed_raw_zinc");
addOrecrushing("tfc:ore/small_native_silver","create:crushed_raw_silver");
addOrecrushing("tfc:ore/small_cassiterite","create:crushed_raw_tin");
addOrecrushing("tfc_ie_addon:ore/small_galena","create:crushed_raw_lead");
addOrecrushing("tfc_ie_addon:ore/small_bauxite","tfc_ie_addon:powder/bauxite");
addOrecrushing("tfc_ie_addon:ore/small_uraninite","create:crushed_raw_uranium");
addOrecrushing("tfc:ore/small_garnierite","create:crushed_raw_nickel");

addIEOrecrushing("tfc:ore/small_hematite","create:crushed_raw_iron",2,0.2);
addIEOrecrushing("tfc:ore/small_magnetite","create:crushed_raw_iron",2,0.2);
addIEOrecrushing("tfc:ore/small_limonite","create:crushed_raw_iron",2,0.2);
addIEOrecrushing("tfc:ore/small_native_gold","create:crushed_raw_gold",2,0.2);
addIEOrecrushing("tfc:ore/small_native_copper","create:crushed_raw_copper",2,0.2);
addIEOrecrushing("tfc:ore/small_malachite","create:crushed_raw_copper",2,0.2);
addIEOrecrushing("tfc:ore/small_tetrahedrite","create:crushed_raw_copper",2,0.2);
addIEOrecrushing("tfc:ore/small_sphalerite","create:crushed_raw_zinc",2,0.2);
addIEOrecrushing("tfc:ore/small_native_silver","create:crushed_raw_silver",2,0.2);
addIEOrecrushing("tfc:ore/small_cassiterite","create:crushed_raw_tin",2,0.2);
addIEOrecrushing("tfc_ie_addon:ore/small_galena","create:crushed_raw_lead",2,0.2);
addIEOrecrushing("tfc_ie_addon:ore/small_bauxite","tfc_ie_addon:powder/bauxite",2,0.2);
addIEOrecrushing("tfc_ie_addon:ore/small_uraninite","create:crushed_raw_uranium",2,0.2);
addIEOrecrushing("tfc:ore/small_garnierite","create:crushed_raw_nickel",2,0.2);


addOrecrushing("create:crushed_raw_iron","immersiveengineering:dust_iron");
addOrecrushing("create:crushed_raw_gold","tfc:powder/native_gold");
addOrecrushing("create:crushed_raw_copper","tfc:powder/native_copper");
addOrecrushing("create:crushed_raw_zinc","tfc:powder/sphalerite");
addOrecrushing("create:crushed_raw_silver","tfc:powder/native_silver");
addOrecrushing("create:crushed_raw_tin","tfc:powder/cassiterite");
addOrecrushing("create:crushed_raw_lead","tfc_ie_addon:powder/galena");
addOrecrushing("create:crushed_raw_uranium","tfc_ie_addon:powder/uraninite");
addOrecrushing("create:crushed_raw_nickel","tfc:powder/garnierite");

addIEOrecrushing("create:crushed_raw_iron","immersiveengineering:dust_iron",2,0);
addIEOrecrushing("create:crushed_raw_gold","tfc:powder/native_gold",2,0);
addIEOrecrushing("create:crushed_raw_copper","tfc:powder/native_copper",2,0);
addIEOrecrushing("create:crushed_raw_zinc","tfc:powder/sphalerite",2,0);
addIEOrecrushing("create:crushed_raw_silver","tfc:powder/native_silver",2,0);
addIEOrecrushing("create:crushed_raw_tin","tfc:powder/cassiterite",2,0);
addIEOrecrushing("create:crushed_raw_lead","tfc_ie_addon:powder/galena",2,0);
addIEOrecrushing("create:crushed_raw_uranium","tfc_ie_addon:powder/uraninite",2,0);
addIEOrecrushing("create:crushed_raw_nickel","tfc:powder/garnierite",2,0);

//lead
addOrecrushing("tfc_ie_addon:ore/poor_galena","tfc_ie_addon:ore/small_galena");
addOrecrushing("tfc_ie_addon:ore/normal_galena","tfc_ie_addon:ore/poor_galena");
addOrecrushing("tfc_ie_addon:ore/rich_galena","tfc_ie_addon:ore/normal_galena");

addIEOrecrushing("tfc_ie_addon:ore/poor_galena","tfc_ie_addon:ore/small_galena",2,0);
addIEOrecrushing("tfc_ie_addon:ore/normal_galena","tfc_ie_addon:ore/small_galena",3,0.1);
addIEOrecrushing("tfc_ie_addon:ore/rich_galena","tfc_ie_addon:ore/small_galena",4,0.5);

//addEmbersmelting("tfc_ie_addon:metal/lead","tfc_ie_addon:ore/small_galena");
addEmbersStamping(<fluid:tfc_ie_addon:metal/lead>,<item:immersiveengineering:ingot_lead>,<item:tfc:ceramic/fire_ingot_mold>);

function addEmbers2Mixing(fluidOut as string, fluidIn1 as string, qty1 as int, fluidIn2 as string, qty2 as int) as void { 
<recipetype:embers:mixing>.addJsonRecipe("embers_mix2"+ fluidOut.replace(":","_"), {
  "type": "embers:mixing",
  "inputs": [
    {
      "amount": qty1,
      "name": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "name": ("tfc:metal/"+ fluidIn2 ) as string
    }
  ],
  "output": {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
  }
}
);
<recipetype:create:mixing>.addJsonRecipe("create_mix2"+ fluidOut.replace(":","_"), {
    "type": "create:mixing",
    "ingredients": [
    {
      "amount": qty1,
      "fluid": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "fluid": ("tfc:metal/"+ fluidIn2 ) as string
    }
    ],
    "results": [
      {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
      }
    ],
    "heatRequirement": "superheated"
}
);
}
/*
function addcreatemelting(fluidOut as string, ItemIn as string, Qty0 as int) as void { 
<recipetype:create:mixing>.addJsonRecipe("create_ore_melting_" + ItemIn.replace(":","_") + fluidOut.replace(":","_"), {
    "type": "create:mixing",
    "ingredients": [
        {
            "item": ItemIn
        }
    ],
    "results": [
        {
            "fluid": fluidOut,
            "amount": Qty0
        }
    ],
    "heatRequirement": "heated"
}
);
}*/
function addEmbers3Mixing(fluidOut as string, fluidIn1 as string, qty1 as int, fluidIn2 as string, qty2 as int, fluidIn3 as string, qty3 as int) as void { 
<recipetype:embers:mixing>.addJsonRecipe("embers_mix3"+ fluidOut.replace(":","_"), {
  "type": "embers:mixing",
  "inputs": [
    {
      "amount": qty1,
      "name": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "name": ("tfc:metal/"+ fluidIn2 ) as string
    },
    {
      "amount": qty3,
      "name": ("tfc:metal/"+ fluidIn3 ) as string
    }
  ],
  "output": {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
  }
}
);
<recipetype:create:mixing>.addJsonRecipe("create_mix3"+ fluidOut.replace(":","_"), {
    "type": "create:mixing",
    "ingredients": [
    {
      "amount": qty1,
      "fluid": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "fluid": ("tfc:metal/"+ fluidIn2 ) as string
    },
    {
      "amount": qty3,
      "fluid": ("tfc:metal/"+ fluidIn3 ) as string
    }
    ],
    "results": [
      {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
      }
    ],
    "heatRequirement": "superheated"
}
);
}

addEmbers2Mixing("brass", "zinc", 1,"copper", 9);
addEmbers2Mixing("bronze", "tin", 1,"copper", 9);
addEmbers2Mixing("rose_gold", "copper", 2,"gold", 8);
addEmbers2Mixing("sterling_silver", "copper", 3,"silver", 7);

addEmbers3Mixing("bismuth_bronze", "bismuth", 1,"zinc", 3,"copper", 6);
addEmbers3Mixing("black_bronze", "gold", 2,"silver", 2,"copper", 6);

function addEmbers2MixingnonTFC(fluidOut as string, qtyU as int, fluidIn1 as string, qty1 as int, fluidIn2 as string, qty2 as int) as void { 
<recipetype:embers:mixing>.addJsonRecipe("embers_mix2_non_tfc"+ fluidOut.replace(":","_"), {
  "type": "embers:mixing",
  "inputs": [
    {
      "amount": qty1,
      "name": fluidIn1
    },
    {
      "amount": qty2,
      "name": fluidIn2
    }
  ],
  "output": {
    "amount": qtyU,
    "fluid": fluidOut
  }
});
}

addEmbers2MixingnonTFC("embers:molten_dawnstone", 10, "tfc:metal/gold", 5,"tfc:metal/copper", 5);
addEmbersStamping(<fluid:embers:molten_dawnstone>,<item:embers:dawnstone_ingot>,<item:tfc:ceramic/fire_ingot_mold>);


/*
<recipetype:pneumaticcraft:heat_frame_cooling>.addJsonRecipe("molten_slag_hardening", {
  "type": "pneumaticcraft:heat_frame_cooling",
  "bonus_output": {
    "limit": 0.5,
    "multiplier": 0.025
  },
  "input": {
    "type": "pneumaticcraft:fluid",
    "amount": 1000,
    "fluid": "tfmg:molten_slag"
  },
  "max_temp": 273,
  "result": {
    "item": "immersiveengineering:slag_glass"
  }
});
*/
/*
<recipetype:tfc:barrel_sealed>.addJsonRecipe("acetaldehyde_barrel_recipe_pneumaticcraft", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "item": "tfc:powder/malachite"
        }
    },
    "input_fluid": {
        "ingredient": "pneumaticcraft:ethanol",
        "amount": 500
    },
    "output_fluid": {
        "fluid": "immersiveengineering:acetaldehyde",
        "amount": 300
    },
    "duration": 8000
});
*/
<recipetype:tfc:barrel_sealed>.addJsonRecipe("acetaldehyde_barrel_recipe_createdieselgenerators", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "item": "tfc:powder/malachite"
        }
    },
    "input_fluid": {
        "ingredient": "createdieselgenerators:ethanol",
        "amount": 500
    },
    "output_fluid": {
        "fluid": "immersiveengineering:acetaldehyde",
        "amount": 300
    },
    "duration": 8000
});
<recipetype:tfc:barrel_sealed>.addJsonRecipe("acetaldehyde_barrel_recipe_immersiveengineering", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "item": "tfc:powder/malachite"
        }
    },
    "input_fluid": {
        "ingredient": "immersiveengineering:ethanol",
        "amount": 500
    },
    "output_fluid": {
        "fluid": "immersiveengineering:acetaldehyde",
        "amount": 300
    },
    "duration": 8000
});
addEmbers2MixingnonTFC("immersiveengineering:phenolic_resin", 3, "immersiveengineering:creosote", 2,"immersiveengineering:acetaldehyde", 3);

<recipetype:embers:stamping>.addJsonRecipe("embers_stamp_plate_duroplast", {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 250,
     "name": <fluid:immersiveengineering:phenolic_resin>.fluid.registryName as string
    },
  "output": (<item:immersiveengineering:plate_duroplast> as IData),
  "stamp": (<item:embers:plate_stamp> as IData)
}
);
addEmbers2MixingnonTFC("kubejs:moltenredalloy",1,"tfc:metal/copper",1,"immersiveengineering:redstone_acid",4);
addEmbersStamping(<fluid:kubejs:moltenredalloy>,<item:morered:red_alloy_ingot>,<item:embers:ingot_stamp>);

//Bauxite/Aluminium - Bayer Process

<recipetype:tfc:heating>.removeByName("tfc_ie_addon:heating/ore/poor_bauxite");
<recipetype:tfc:heating>.removeByName("tfc_ie_addon:heating/ore/small_bauxite");
<recipetype:tfc:heating>.removeByName("tfc_ie_addon:heating/ore/rich_bauxite");

<recipetype:tfc:heating>.removeByName("tfc_ie_addon:heating/ore/normal_bauxite");
addOrecrushing("tfc_ie_addon:ore/poor_bauxite","tfc_ie_addon:ore/small_bauxite");
addOrecrushing("tfc_ie_addon:ore/normal_bauxite","tfc_ie_addon:ore/poor_bauxite");
addOrecrushing("tfc_ie_addon:ore/rich_bauxite","tfc_ie_addon:ore/normal_bauxite");

addIEOrecrushing("tfc_ie_addon:ore/poor_bauxite","tfc_ie_addon:ore/small_bauxite",2,0);
addIEOrecrushing("tfc_ie_addon:ore/normal_bauxite","tfc_ie_addon:ore/small_bauxite",3,0.1);
addIEOrecrushing("tfc_ie_addon:ore/rich_bauxite","tfc_ie_addon:ore/small_bauxite",4,0.5);
/*
<recipetype:pneumaticcraft:thermo_plant>.addJsonRecipe("bayer_process_sodium_aluminate", {
  "type": "pneumaticcraft:thermo_plant",
  "exothermic": false,
  "fluid_input": {
    "type": "pneumaticcraft:fluid",
    "amount": 20,
    "tag": "tfc:lye"
  },
  "fluid_output": {
    "amount": 20,
    "fluid": "kubejs:sodium_aluminate"
  },
  "item_input": {
    "item": "tfc_ie_addon:powder/bauxite"
  },
  "pressure": 10.0,
  "temperature": {
    "max_temp": 523,
    "min_temp": 473
  }
});
*/
<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("bayer_process_sodium_aluminate", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "superheated",  
  "ingredients": [
    {
      "item": "tfc_ie_addon:powder/bauxite"
    },
    {
      "fluid": "tfc:lye",
      "amount": 20
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "fluid": "kubejs:sodium_aluminate",
      "amount": 20
    }
  ]
});

<recipetype:vintageimprovements:centrifugation>.addJsonRecipe("bayer_process_aluminium_hydroxide", {
	"type":"vintageimprovements:centrifugation",
	"ingredients": [ 
		{
            "fluid": "kubejs:sodium_aluminate",
            "amount": 20
		}
	],
	"results": [
		{
            "fluid": "kubejs:aluminium_hydroxide",
            "amount": 10
		},
		{
            "fluid": "kubejs:red_mud",
            "amount": 10
		}
	],
	"processingTime": 1000
});


<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("bayer_process_crushed_raw_aluminum", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "superheated",  
  "ingredients": [
    {
      "fluid": "kubejs:aluminium_hydroxide",
      "amount": 10
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "item": "create:crushed_raw_aluminum"
    },
    {
      "fluid": "kubejs:red_mud",
      "amount": 5
    }
  ]
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("bayer_process_crushed_raw_aluminum_bonus1", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "superheated",
  "ingredients": [
    {
      "item": "create:crushed_raw_aluminum"
    },
    {
      "fluid": "kubejs:aluminium_hydroxide",
      "amount": 10
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "fluid": "kubejs:red_mud",
      "amount": 2
    },
    {
      "item": "create:crushed_raw_aluminum"
    },   
    {
      "item": "create:crushed_raw_aluminum"
    },         
    {
      "item": "create:crushed_raw_aluminum",
      "chance": 0.6
    }
  ]
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("bayer_process_crushed_raw_aluminum_bonus2", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "superheated",  
  "ingredients": [
    {
      "item": "tfc:ore/cryolite"
    },
    {
      "fluid": "kubejs:aluminium_hydroxide",
      "amount": 250
    }
  ],
  "processingTime": 1600,
  "results": [
    {
      "fluid": "kubejs:red_mud",
      "amount": 50
    },
    {
      "item": "immersiveengineering:dust_aluminum"
    },         
    {
      "item": "immersiveengineering:dust_aluminum",
      "chance": 0.75
    },
    {
      "item": "minecraft:redstone",
      "chance": 0.1
    }
  ]
});
//Hall–Héroult_process is above



//Automated Steel

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("ultra_high_high_carbon_steel_cooling", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",  
  "ingredients": [
    {
      "fluid": "tfmg:molten_steel",
      "amount": 333
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "item": "immersiveengineering:slag",
      "chance": 1.25
    },
    {
      "fluid": "tfc:metal/high_carbon_steel",
      "amount": 100
    }
  ]
});

<recipetype:vintageimprovements:pressurizing>.addJsonRecipe("ultra_high_carbon_steel_steel", {
	"type":"vintageimprovements:pressurizing",
	"secondaryFluidResults": 0,
	"heatRequirement": "superheated",
	"ingredients": [ 
		{
			"fluid": "tfmg:molten_steel",
			"amount": 333
		},
		{
			"fluid": "northstar:liquid_oxygen",
			"amount": 250
		},
	],
	"results": [
		{
			"fluid": "tfc:metal/steel",
			"amount": 50
		},
    {
			"fluid": "kubejs:liquid_carbon_solution",
			"amount": 100
		},
    {
			"fluid": "kubejs:waste",
			"amount": 200
		}
	],
	"processingTime": 400
});

<recipetype:vintageimprovements:pressurizing>.addJsonRecipe("high_carbon_steel_steel", {
	"type":"vintageimprovements:pressurizing",
	"secondaryFluidResults": 0,
	"heatRequirement": "superheated",
	"ingredients": [ 
		{
			"fluid": "tfc:metal/high_carbon_steel",
			"amount": 100
		},
		{
			"fluid": "northstar:liquid_oxygen",
			"amount": 250
		},
	],
	"results": [
		{
			"fluid": "tfc:metal/steel",
			"amount": 100
		},
    {
			"fluid": "kubejs:liquid_carbon_solution",
			"amount": 50
		}
	],
	"processingTime": 400
});

<recipetype:vintageimprovements:vacuumizing>.addJsonRecipe("liquid_carbon_solution_blasting_fuel", {
	"type":"vintageimprovements:vacuumizing",
  "heatRequirement": "superheated",
	"ingredients": [ 
    {
			"fluid": "kubejs:liquid_carbon_solution",
			"amount": 100
		}
	],
	"results": [
		{
			"item": "tfmg:coal_coke_dust",
			"count": 1
		}
	],
	"processingTime": 600
});

<recipetype:tfc:quern>.addJsonRecipe("coke_dust_to_powder", {
    "type": "tfc:quern",
    "ingredient": {
        "item": "immersiveengineering:dust_coke"
    },
    "result": {
        "item": "tfc:powder/coke",
        "count": 1
    }
});

<recipetype:vintageimprovements:pressurizing>.addJsonRecipe("hydrocarbon", {
	"type":"vintageimprovements:pressurizing",
	"secondaryFluidResults": 0,
	"heatRequirement": "superheated",
	"ingredients": [ 
		{
			"tag": "forge:dusts/coal_coke"
		},
		{
			"fluid": "minecraft:water",
			"amount": 250
		},
	],
	"results": [

    {
			"fluid": "northstar:hydrocarbon",
			"amount": 100
		}
	],
	"processingTime": 400
});

<recipetype:vintageimprovements:vacuumizing>.addJsonRecipe("hydrocarbon_liquid_carbon_solution", {
	"type":"vintageimprovements:vacuumizing",
  "heatRequirement": "superheated",
	"ingredients": [ 
    {
			"fluid": "northstar:hydrocarbon",
			"amount": 100
		}
	],
	"results": [
		{
			"fluid": "kubejs:liquid_carbon_solution",
			"amount": 10
		}
	],
	"processingTime": 600
});

//Naquadah 
<recipetype:minecraft:crafting>.remove(<item:sgjourney:naquadah_rod>);
<recipetype:minecraft:crafting>.remove(<item:sgjourney:naquadah_alloy>);

addcreatemetallurgymelting("kubejs:molten_naquadah","sgjourney:raw_naquadah",100);

<recipetype:vintageimprovements:centrifugation>.addJsonRecipe("naquadah_process", {
	"type":"vintageimprovements:centrifugation",
	"ingredients": [ 
		{
            "fluid": "kubejs:molten_naquadah",
            "amount": 100
		}
	],
	"results": [
        {
            "fluid": "sgjourney:liquid_naquadah",
            "amount": 10
        },
        {
            "fluid": "sgjourney:heavy_liquid_naquadah",
            "amount": 100
        }
	],
	"processingTime": 1000
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("naquadah_process_pure_crystal", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",  
  "ingredients": [
    {
      "fluid": "sgjourney:liquid_naquadah",
      "amount": 100
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "item": "sgjourney:pure_naquadah",
      "chance": 0.25
    },
    {
      "fluid": "tfmg:molten_slag",
      "amount": 100
    }
  ]
});

<recipetype:vintageimprovements:pressurizing>.addJsonRecipe("naquadah_process_mettalic_liquid", {
	"type":"vintageimprovements:pressurizing",
	"ingredients": [ 
		{
			"fluid": "sgjourney:heavy_liquid_naquadah",
			"amount": 100
		},
		{
			"tag": "minecraft:soul_fire_base_blocks",
		}
	],
	"results": [
		{
			"fluid": "kubejs:metallic_naquadah",
			"amount": 100
		}
	],
	"processingTime": 800
});

<recipetype:createdieselgenerators:basin_fermenting>.addJsonRecipe("naquadah_process_metal", {
  "type": "createdieselgenerators:basin_fermenting",
  "heatRequirement": "heated",  
  "ingredients": [
    {
      "fluid": "kubejs:metallic_naquadah",
      "amount": 100
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "item": "sgjourney:naquadah_rod"
    },
    {
      "fluid": "embers:soul_crude",
      "amount": 100
    }
  ]
});

<recipetype:createaddition:rolling>.addJsonRecipe("naquadah_rolled_rod_2_sheet", {
	"type":"createaddition:rolling",
	"input": {
      	"item": "sgjourney:naquadah_rod"
	},
	"result": {
		"item": "kubejs:naquadah_sheet"
	}
});  

<recipetype:railcraft:rolling>.addJsonRecipe("naquadah_alloy", {
  "type": "railcraft:rolling",
  "key": {
    "n": {
      "item": "kubejs:naquadah_sheet"
    },
    "o": {
      "item": "northstar:tungsten_sheet"
    }
  },
  "pattern": [
    "nnn",
    "ooo",
    "nnn"
  ],
  "processTime": 100,
  "result": {
    "count": 16,
    "item": "sgjourney:naquadah_alloy"
  }
});

//Plates
craftingTable.addShapeless("handcrafted_plate_from_sheet_gold",<item:immersiveengineering:plate_gold>*2, [<tag:items:forge:sheets/gold>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_wrought_iron",<item:immersiveengineering:plate_iron>*2, [<tag:items:forge:sheets/wrought_iron>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_copper",<item:immersiveengineering:plate_copper>*2, [<tag:items:forge:sheets/copper>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_aluminum",<item:immersiveengineering:plate_aluminum>*2, [<tag:items:forge:sheets/aluminum>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_lead",<item:immersiveengineering:plate_lead>*2, [<tag:items:forge:sheets/lead>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_silver",<item:immersiveengineering:plate_silver>*2, [<tag:items:forge:sheets/silver>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_nickel",<item:immersiveengineering:plate_nickel>*2, [<tag:items:forge:sheets/nickel>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_uranium",<item:immersiveengineering:plate_uranium>*2, [<tag:items:forge:sheets/uranium>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_constantan",<item:immersiveengineering:plate_constantan>*2, [<tag:items:forge:sheets/constantan>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_electrum",<item:immersiveengineering:plate_electrum>*2, [<tag:items:forge:sheets/electrum>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
craftingTable.addShapeless("handcrafted_plate_from_sheet_steel",<item:immersiveengineering:plate_steel>*2, [<tag:items:forge:sheets/steel>,<item:immersiveengineering:wirecutter>.anyDamage().transformDamage(1)]);    
/*
{
	"type":"createaddition:rolling",
	"input": {
      	"tag": "forge:plates/aluminum"
	},
	"result": {
		"item": "immersiveengineering:wire_aluminum",
		"count": 2
	},
	"conditions": [ {
		"type": "forge:mod_loaded",
		"modid": "immersiveengineering"
    } ]
}
function addCaminiteKnapping(Row1 as string, Row2 as string, Row3 as string, Row4 as string, Row5 as string, ItemOut as string) as void { 
craftingTable.remove(<item:${ItemOut}>);
<recipetype:tfc:knapping>.addJsonRecipe("caminite_knapping_" + ItemOut.replace(":","_"), {
    "type": "tfc:knapping",
    "knapping_type": "kubejs:caminite",
    "pattern": [
        Row1,
        Row2,
        Row3,
        Row4,
        Row5,
      ],
    "result": {
        "item": ItemOut
    }
});
}
*/

/*
<item:aetherworks:plate_aether>
<item:create:sturdy_sheet>
<item:create:brass_sheet>
<item:embers:dawnstone_plate>
<item:immersiveengineering:plate_duroplast>
<item:immersiveengineering:plate_copper>
<item:immersiveengineering:plate_aluminum>
<item:immersiveengineering:plate_lead>
<item:immersiveengineering:plate_silver>
<item:immersiveengineering:plate_nickel>
<item:immersiveengineering:plate_uranium>
<item:immersiveengineering:plate_constantan>
<item:immersiveengineering:plate_electrum>
<item:immersiveengineering:plate_steel>
<item:immersiveengineering:plate_iron>
<item:immersiveengineering:plate_gold>
<item:railcraft:tin_plate>
<item:railcraft:zinc_plate>
<item:railcraft:bronze_plate>
<item:railcraft:invar_plate>
<item:createaddition:zinc_sheet>
<item:createdeco:andesite_sheet>
<item:createdeco:zinc_sheet>
<item:createdeco:netherite_sheet>
<item:createdeco:industrial_iron_sheet>
<item:vintageimprovements:andesite_sheet>
<item:vintageimprovements:bronze_sheet>
<item:vintageimprovements:cast_iron_sheet>
<item:vintageimprovements:invar_sheet>
<item:vintageimprovements:netherite_sheet>
<item:vintageimprovements:pig_iron_sheet>
<item:vintageimprovements:rose_gold_sheet>
<item:vintageimprovements:tin_sheet>
<item:vintageimprovements:vanadium_sheet>
<item:vintageimprovements:zinc_sheet>
*/



/*

//Liquid Catalyst
#mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);

//Redstone Alchemical Slurry
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1008);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*144);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1296);

mods.embers.Melter.add(<liquid:redstone>*144,<ore:dustRedstone>); 
mods.embers.Melter.add(<liquid:redstone>*1296,<ore:blockRedstone>); 

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:pig_iron>*288, <tfc:powder/flux>, -0.75, 773.0, <liquid:steel>*144);

    //Mechanical Metal Working

    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/pig_iron>*2, <contenttweaker:striking_die>, 2000);
    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>*2, <contenttweaker:striking_die>, 2000);

    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/high_carbon_steel>],<tfc:metal/ingot/pig_iron>,<tfc:powder/flux>);
    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/steel>],<tfc:metal/ingot/high_carbon_steel>,<tfc:powder/flux>);

//Sulfuric Acid

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:iron_sulfate>, <ore:oreIronSmall>, <ore:dustSulfur>, 2400);

mods.pyrotech.StoneCrucible.addRecipe("Primtive_Sulfur_Trioxide",<liquid:sulfur_trioxide>*500,<contenttweaker:iron_sulfate>,2400,true);

val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.terrafirmacraft.Barrel.addRecipe("Primitive Sulfuric Acid"~i, FC.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), <liquid:sulfur_trioxide>*1000, FC, <liquid:sulfuric_acid>*1000, 4);
}

//Oxygen
    mods.embers.Stamper.add(<contenttweaker:zeolite_powder>*4,<liquid:alumina>*144, <embers:stamp_flat>,<ore:sandSilica>); #zeolite
    mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:zeolite_powder>, <ore:sandSilica>, <contenttweaker:bauxitedust>, 2400); #zeolite
    recipes.addShapeless("Oxygen_can",<forestry:can:1>.withTag({Fluid: {FluidName: "oxygen", Amount: 1000}}), #oxygen
    [<pneumaticcraft:air_canister:*>.transformDamage(1000),<contenttweaker:zeolite_powder>,<forestry:can>]);
//Hydrochlroic Acid 
    mods.embers.Mixer.add(<liquid:hydrogen_chloride>*1000, [<liquid:brine>*750,<liquid:sulfuric_acid>*500]);
    mods.embers.Mixer.add(<liquid:hydrochloric_acid>*1000, [<liquid:hydrogen_chloride>*500,<liquid:distwater>*500]);
//Chlroine 
    mods.embers.Mixer.add(<liquid:chlorine>*1000, [<liquid:hydrogen_chloride>*1000,<liquid:oxygen>*500]);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:brine>*1000, <liquid:chlorine>*500, <liquid:hydrogen>*250, <liquid:sodium_hydroxide_solution>*500, null);
//Rubber 

furnace.remove(<thebetweenlands:items_misc:23>);
furnace.remove(<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.aether_legacy.Freezer.registerFreezable(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>,800);
mods.pneumaticcraft.heatframecooling.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.cfm.Freezer.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
moretweaker.bewitchment.FrostFire.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>,<thebetweenlands:bl_bucket_rubber:1>);
mods.cyclicmagic.Solidifier.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>, [<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})], "rubber", 1000);
recipes.addShapeless(<thebetweenlands:syrmorite_bucket_solid_rubber>,[<thebetweenlands:bl_bucket_rubber:1>,<thermalfoundation:material:1025>]);
*/

