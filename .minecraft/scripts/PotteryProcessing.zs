

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;

craftingTable.addShapeless("andesite_alloy_lump_tin", <item:kubejs:andesite_alloy_raw> * 4, [<item:minecraft:clay>,<item:tfc:rock/gravel/andesite>,<item:tfc:powder/cassiterite>]);
craftingTable.addShapeless("andesite_alloy_lump_zinc", <item:kubejs:andesite_alloy_raw> * 4, [<item:minecraft:clay>,<item:tfc:rock/gravel/andesite>,<item:tfc:powder/sphalerite>]);
craftingTable.remove(<item:create:andesite_alloy>);
<recipetype:create:mixing>.remove(<item:create:andesite_alloy>);

craftingTable.addShapeless("archaic_lump", <item:kubejs:unfired_archaic_lump> * 4, [<item:tfc:fire_clay_block>,<item:minecraft:soul_sand>,<item:tfc:powder/graphite>]);

function addTFCPotteryFire(ItemIn as string, ItemOut as string) as void { 
<recipetype:tfc:heating>.addJsonRecipe("pottery_fire_kiln" + ItemOut.replace(":","_"), {
  "type": "tfc:heating",
  "ingredient": {
    "item": ItemIn
  },
  "result_item": {
    "item": ItemOut
  },
  "temperature": 1399
});
<recipetype:create_dd:superheating>.addJsonRecipe("pottery_fire_superheating" + ItemOut.replace(":","_"), {
  "type": "create_dd:superheating",
  "ingredients": [
    {
      "item": ItemIn
    }
  ],
  "results": [
    {
      "item": ItemOut
    }
  ]
});
<recipetype:immersiveengineering:alloy>.addJsonRecipe("pottery_fire_alloy" + ItemOut.replace(":","_"), {
  "type": "immersiveengineering:alloy",
  "input0": {
    "base_ingredient": {
      "item": ItemIn
    },
  },
  "input1": {
    "tag": "forge:dusts/wood"
  },
  "result": {
    "item": ItemOut
  },
  "time": 200
});
}
//A Data File is needed for each input navigate too "kubejs\data\integration\tfc\item_heats"
addTFCPotteryFire("kubejs:andesite_alloy_raw","create:andesite_alloy");
addTFCPotteryFire("kubejs:clay_insulator","kubejs:ceramic_insulator");
addTFCPotteryFire("kubejs:unfired_material_calculation_processor_press","kubejs:fired_material_calculation_processor_press");
addTFCPotteryFire("kubejs:unfired_material_engineering_processor_press","kubejs:fired_material_engineering_processor_press");
addTFCPotteryFire("kubejs:unfired_material_logic_processor_press","kubejs:fired_material_logic_processor_press");
addTFCPotteryFire("kubejs:unfired_material_silicon_press","kubejs:fired_material_silicon_press");

addTFCPotteryFire("kubejs:unfired_archaic_lump","embers:archaic_brick");
addTFCPotteryFire("embers:caminite_blend","embers:caminite_brick");

<recipetype:tfc:heating>.addJsonRecipe("pottery_fire_dirty_glass", {
  "type": "tfc:heating",
  "ingredient": {
    "tag": "forge:sand"
  },
  "result_item": {
    "item": "quark:dirty_glass"
  },
  "temperature": 1399
});

<recipetype:minecraft:smelting>.remove(<item:embers:flat_stamp>);
<recipetype:minecraft:smelting>.remove(<item:embers:ingot_stamp>);
<recipetype:minecraft:smelting>.remove(<item:embers:nugget_stamp>);
<recipetype:minecraft:smelting>.remove(<item:embers:plate_stamp>);
<recipetype:minecraft:smelting>.remove(<item:embers:caminite_plate>);

addTFCPotteryFire("embers:raw_flat_stamp","embers:flat_stamp");
addTFCPotteryFire("embers:raw_ingot_stamp","embers:ingot_stamp");
addTFCPotteryFire("embers:raw_nugget_stamp","embers:nugget_stamp");
addTFCPotteryFire("embers:raw_plate_stamp","embers:plate_stamp");
addTFCPotteryFire("embers:raw_caminite_plate","embers:caminite_plate");

//mods.embers.Mixer.add(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);

<recipetype:tfc:glassworking>.addJsonRecipe("vac_tube_glassworking", {
    "type": "tfc:glassworking",
    "operations": [
        "blow",
        "pinch",
        "stretch"
    ],
    "batch": {
        "item": "tfc:silica_glass_batch"
    },
    "result": {
        "item": "kubejs:casing_electron_tube"
    }
});

function addTFCPotteryCompat(ItemIn as string, ItemOut as string) as void { 
<recipetype:create_dd:superheating>.addJsonRecipe("tfc_pottery_compat_superheat" + ItemOut.replace(":","_"),{
  "type": "create_dd:superheating",
  "ingredients": [
    {
      "item": ItemIn
    }
  ],
  "results": [
    {
      "item": ItemOut
    }
  ]
});
<recipetype:immersiveengineering:alloy>.addJsonRecipe("tfc_pottery_compat_alloy" + ItemOut.replace(":","_"), {
  "type": "immersiveengineering:alloy",
  "input0": {
    "base_ingredient": {
      "item": ItemIn
    },
  },
  "input1": {
    "tag": "forge:dusts/wood"
  },
  "result": {
    "item": ItemOut
  },
  "time": 200
});
}

//<tag:items:tfc:unfired_pottery>
addTFCPotteryCompat("tfc:ceramic/black_unfired_vessel","tfc:ceramic/black_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/blue_unfired_vessel","tfc:ceramic/blue_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/brown_unfired_vessel","tfc:ceramic/brown_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/cyan_unfired_vessel","tfc:ceramic/cyan_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/gray_unfired_vessel","tfc:ceramic/gray_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/green_unfired_vessel","tfc:ceramic/green_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/light_blue_unfired_vessel","tfc:ceramic/light_blue_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/light_gray_unfired_vessel","tfc:ceramic/light_gray_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/lime_unfired_vessel","tfc:ceramic/lime_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/magenta_unfired_vessel","tfc:ceramic/magenta_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/orange_unfired_vessel","tfc:ceramic/orange_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/pink_unfired_vessel","tfc:ceramic/pink_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/purple_unfired_vessel","tfc:ceramic/purple_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/red_unfired_vessel","tfc:ceramic/red_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/unfired_axe_head_mold","tfc:ceramic/axe_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_bell_mold","tfc:ceramic/bell_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_blowpipe","tfc:ceramic_blowpipe");
addTFCPotteryCompat("tfc:ceramic/unfired_bowl","tfc:ceramic/bowl");
addTFCPotteryCompat("tfc:ceramic/unfired_brick","minecraft:brick");
addTFCPotteryCompat("tfc:ceramic/unfired_chisel_head_mold","tfc:ceramic/chisel_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_crucible","tfc:crucible");
addTFCPotteryCompat("tfc:ceramic/unfired_fire_brick","tfc:ceramic/fire_brick");
addTFCPotteryCompat("tfc:ceramic/unfired_fire_ingot_mold","tfc:ceramic/fire_ingot_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_flower_pot","minecraft:flower_pot");
addTFCPotteryCompat("tfc:ceramic/unfired_hammer_head_mold","tfc:ceramic/hammer_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_hoe_head_mold","tfc:ceramic/hoe_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_ingot_mold","tfc:ceramic/ingot_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_javelin_head_mold","tfc:ceramic/javelin_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_jug","tfc:ceramic/jug");
addTFCPotteryCompat("tfc:ceramic/unfired_knife_blade_mold","tfc:ceramic/knife_blade_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel","tfc:ceramic/large_vessel");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/black","tfc:ceramic/large_vessel/black");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/blue","tfc:ceramic/large_vessel/blue");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/brown","tfc:ceramic/large_vessel/brown");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/cyan","tfc:ceramic/large_vessel/cyan");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/gray","tfc:ceramic/large_vessel/gray");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/green","tfc:ceramic/large_vessel/green");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/light_blue","tfc:ceramic/large_vessel/light_blue");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/light_gray","tfc:ceramic/large_vessel/light_gray");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/lime","tfc:ceramic/large_vessel/lime");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/magenta","tfc:ceramic/large_vessel/magenta");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/orange","tfc:ceramic/large_vessel/orange");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/pink","tfc:ceramic/large_vessel/pink");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/purple","tfc:ceramic/large_vessel/purple");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/red","tfc:ceramic/large_vessel/red");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/white","tfc:ceramic/large_vessel/white");
addTFCPotteryCompat("tfc:ceramic/unfired_large_vessel/yellow","tfc:ceramic/large_vessel/yellow");
addTFCPotteryCompat("tfc:ceramic/unfired_mace_head_mold","tfc:ceramic/mace_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_pan","tfc:pan/empty");
addTFCPotteryCompat("tfc:ceramic/unfired_pickaxe_head_mold","tfc:ceramic/pickaxe_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_pot","tfc:ceramic/pot");
addTFCPotteryCompat("tfc:ceramic/unfired_propick_head_mold","tfc:ceramic/propick_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_saw_blade_mold","tfc:ceramic/saw_blade_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_scythe_blade_mold","tfc:ceramic/scythe_blade_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_shovel_head_mold","tfc:ceramic/shovel_head_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_spindle_head","tfc:ceramic/spindle_head");
addTFCPotteryCompat("tfc:ceramic/unfired_sword_blade_mold","tfc:ceramic/sword_blade_mold");
addTFCPotteryCompat("tfc:ceramic/unfired_vessel","tfc:ceramic/vessel");
addTFCPotteryCompat("tfc:ceramic/white_unfired_vessel","tfc:ceramic/white_glazed_vessel");
addTFCPotteryCompat("tfc:ceramic/yellow_unfired_vessel","tfc:ceramic/yellow_glazed_vessel");


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

addCaminiteKnapping(
        "     ",
        " XXX ",
        " XXX ",
        " XXX ",
        "     ",
"embers:raw_flat_stamp");

addCaminiteKnapping(
        "XXXXX",
        "X  XX",
        "X  XX",
        "X  XX",
        "XXXXX",
"embers:raw_ingot_stamp");

addCaminiteKnapping(
        "XXX X",
        "XX  X",
        "X   X",
        "XX XX",
        "XXXXX",
"embers:raw_nugget_stamp");

addCaminiteKnapping(
        "XXXXX",
        "X   X",
        "X   X",
        "X   X",
        "XXXXX",
"embers:raw_plate_stamp");

addCaminiteKnapping(
        "  XX ",
        " XXXX",
        "XXXXX",
        "XXXX ",
        " XX  ",
"embers:raw_caminite_plate");


function addClayKnapping(Row1 as string, Row2 as string, Row3 as string, Row4 as string, Row5 as string, ItemOut as string) as void { 
craftingTable.remove(<item:${ItemOut}>);
<recipetype:tfc:knapping>.addJsonRecipe("clay_knapping_" + ItemOut.replace(":","_"), {
    "type": "tfc:knapping",
    "knapping_type": "tfc:clay",
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

addClayKnapping(
"XX  X", 
"X X X", 
"XXXXX", 
"X X X", 
"X  XX",
"kubejs:unfired_material_engineering_processor_press");
																   
addClayKnapping(
"  X X", 
"  XX ", 
"XXXXX", 
" XX  ", 
"X X  ",
"kubejs:unfired_material_calculation_processor_press");

addClayKnapping(
"  X  ", 
"  XX ", 
"XXXXX", 
" XX  ", 
"  X  ",
"kubejs:unfired_material_logic_processor_press");

addClayKnapping(
"X X X", 
" XXX ", 
"XX XX", 
" XXX ", 
"X X X",
"kubejs:unfired_material_silicon_press");
