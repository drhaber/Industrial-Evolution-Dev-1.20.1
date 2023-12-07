

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

<recipetype:jumbofurnace:jumbo_smelting>.removeAll();
Jei.hideCategory(<resource:jumbofurnace:jumbo_smelting>);
Jei.hideCategory(<resource:jumbofurnace:jumbo_furnace_upgrade>);

<recipetype:embers:stamping>.removeAll();
<recipetype:immersiveengineering:alloy>.removeAll();
<recipetype:embers:mixing>.removeAll();
<recipetype:railcraft:blasting>.removeAll();
<recipetype:minecraft:campfire_cooking>.removeAll();
<recipetype:minecraft:smoking>.removeAll();
<recipetype:immersiveengineering:blast_furnace>.removeAll();
<recipetype:immersiveengineering:blast_furnace_fuel>.removeAll();
<recipetype:minecraft:crafting>.remove(<tag:items:forge:dusts>);
<recipetype:minecraft:smelting>.remove(<tag:items:forge:ingots>);
<recipetype:minecraft:blasting>.remove(<tag:items:forge:ingots>);
<recipetype:minecraft:smelting>.remove(<tag:items:forge:glass>);
<recipetype:minecraft:smelting>.remove(<tag:items:forge:nuggets>);
<recipetype:minecraft:blasting>.remove(<tag:items:forge:nuggets>);
<recipetype:minecraft:smelting>.remove(<tag:items:tfc:colored_glazed_terracotta>);
<recipetype:create:splashing>.remove(<tag:items:forge:nuggets>);
<recipetype:create_dd:superheating>.remove(<tag:items:forge:ingots>);

<recipetype:railcraft:coking>.removeAll();
<recipetype:tfmg:coking>.removeAll();

<recipetype:pneumaticcraft:explosion_crafting>.removeAll();

<recipetype:immersiveengineering:crusher>.removeByModid("tfc_ie_addon");
<recipetype:minecraft:smelting>.removeByModid("woodencog");
<recipetype:create:crushing>.removeByModid("woodencog");
<recipetype:tfc:knapping>.removeByModid("woodencog");

<recipetype:create:cutting>.remove(<item:create:andesite_alloy>);
<recipetype:create:cutting>.remove(<item:tfc:metal/ingot/wrought_iron>);
<recipetype:create:cutting>.remove(<item:tfc:refined_iron_bloom>);
<recipetype:embers:melting>.removeByName("embers:melting/ingots/iron");


craftingTable.removeByName("railcraft:bronze_ingot_crafted_with_ingots");
craftingTable.removeByName("railcraft:bronze_ingot_from_bronze_nugget");
craftingTable.removeByName("railcraft:bronze_ingot");
//craftingTable.removeByName("railcraft:bronze_block_from_bronze_ingot");
craftingTable.removeByName("railcraft:brass_ingot_crafted_with_ingots");
//craftingTable.removeByName("railcraft:brass_ingot_from_brass_nugget");
craftingTable.removeByName("railcraft:brass_ingot");
//craftingTable.removeByName("railcraft:brass_block_from_brass_ingot");
//craftingTable.removeByName("railcraft:zinc_ingot_from_zinc_nugget");
craftingTable.removeByName("railcraft:zinc_ingot");
//craftingTable.removeByName("railcraft:zinc_block_from_zinc_ingot");


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

/*
addEmbersmelting("tfc:metal/copper","tfc:ore/small_native_copper");
addEmbersmelting("tfc:metal/gold","tfc:ore/small_native_gold");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_hematite");
addEmbersmelting("tfc:metal/silver","tfc:ore/small_native_silver");
addEmbersmelting("tfc:metal/tin","tfc:ore/small_cassiterite");
addEmbersmelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite");
addEmbersmelting("tfc:metal/nickel","tfc:ore/small_garnierite");
addEmbersmelting("tfc:metal/copper","tfc:ore/small_malachite");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_magnetite");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_limonite");
addEmbersmelting("tfc:metal/zinc","tfc:ore/small_sphalerite");
addEmbersmelting("tfc:metal/copper","tfc:ore/small_tetrahedrite");
*/
//addEmbersmelting("tfc:metal/cast_iron","create:crushed_raw_iron",5);
addEmbersmelting("tfc:metal/gold","create:crushed_raw_gold",5);
addEmbersmelting("tfc:metal/copper","create:crushed_raw_copper",5);
addEmbersmelting("tfc:metal/zinc","create:crushed_raw_zinc",5);
addEmbersmelting("tfc:metal/silver","create:crushed_raw_silver",5);
addEmbersmelting("tfc:metal/tin","create:crushed_raw_tin",5);
addEmbersmelting("tfc_ie_addon:metal/lead","create:crushed_raw_lead",5);
addEmbersmelting("tfc_ie_addon:metal/aluminum","create:crushed_raw_aluminum",5);
addEmbersmelting("tfc_ie_addon:metal/uranium","create:crushed_raw_uranium",5);
addEmbersmelting("tfc:metal/nickel","create:crushed_raw_nickel",5);

addEmbersmelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite",10);

addcreatemelting("tfc:metal/cast_iron","create:crushed_raw_iron",5);
addcreatemelting("tfc:metal/gold","create:crushed_raw_gold",5);
addcreatemelting("tfc:metal/copper","create:crushed_raw_copper",5);
addcreatemelting("tfc:metal/zinc","create:crushed_raw_zinc",5);
addcreatemelting("tfc:metal/silver","create:crushed_raw_silver",5);
addcreatemelting("tfc:metal/tin","create:crushed_raw_tin",5);
addcreatemelting("tfc_ie_addon:metal/lead","create:crushed_raw_lead",5);
addcreatemelting("tfc_ie_addon:metal/aluminum","create:crushed_raw_aluminum",5);
addcreatemelting("tfc_ie_addon:metal/uranium","create:crushed_raw_uranium",5);
addcreatemelting("tfc:metal/nickel","create:crushed_raw_nickel",5);

//addcreatemelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite",10);

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
addOrecrushing("tfc_ie_addon:ore/small_bauxite","create:crushed_raw_aluminum");
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
addIEOrecrushing("tfc_ie_addon:ore/small_bauxite","create:crushed_raw_aluminum",2,0.2);
addIEOrecrushing("tfc_ie_addon:ore/small_uraninite","create:crushed_raw_uranium",2,0.2);
addIEOrecrushing("tfc:ore/small_garnierite","create:crushed_raw_nickel",2,0.2);

//lead
addOrecrushing("tfc_ie_addon:ore/poor_galena","tfc_ie_addon:ore/small_galena");
addOrecrushing("tfc_ie_addon:ore/normal_galena","tfc_ie_addon:ore/poor_galena");
addOrecrushing("tfc_ie_addon:ore/rich_galena","tfc_ie_addon:ore/normal_galena");
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
}

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


/*

//Liquid Catalyst
#mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);

//Redstone Alchemical Slurry
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1008);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*144);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1296);

mods.embers.Melter.add(<liquid:redstone>*144,<ore:dustRedstone>); 
mods.embers.Melter.add(<liquid:redstone>*1296,<ore:blockRedstone>); 

mods.embers.Mixer.add(<liquid:alchemical_redstone>*288, [<liquid:liquidchorus>*125,<liquid:redstone>*144,<liquid:menrilresin>*250]);

mods.embers.Mixer.add(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);

//Bauxite/Aluminium - Bayer Process
    mods.embers.Melter.add(<liquid:alumina>*144, <pyrotech:generated_slag_aluminium_custom>);
    mods.pyrotech.BrickCrucible.addRecipe(<liquid:alumina>.name,<liquid:alumina>*144,<pyrotech:generated_slag_aluminium_custom>,2400);
    mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:sodium_hydroxide_solution>*500, <tfc:ore/small/bauxite>*10, 2, 448.0, <liquid:sodium_aluminate>*144);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:sodium_aluminate>*144, <liquid:alumina>*144, <liquid:red_mud>*144, null, null);
    mods.embers.Melter.add(<liquid:aluminium>*144, <tfctech:metal/aluminium_long_rod>);


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