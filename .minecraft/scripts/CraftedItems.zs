import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.tag.manager.ITagManager;
import mods.create.FillingManager;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:minecraft:saddle>);
craftingTable.remove(<item:productivebees:centrifuge>);
craftingTable.remove(<item:productivebees:heated_centrifuge>);
craftingTable.remove(<item:minecraft:paper>);
craftingTable.remove(<item:minecraft:cake>);
craftingTable.remove(<item:ae2:certus_quartz_pickaxe>);
craftingTable.remove(<item:ae2:nether_quartz_pickaxe>);
craftingTable.remove(<item:embers:lead_pickaxe>);
craftingTable.remove(<item:embers:silver_pickaxe>);
craftingTable.remove(<item:embers:dawnstone_pickaxe>);
craftingTable.remove(<item:railcraft:steel_pickaxe>);
craftingTable.remove(<item:aether:skyroot_pickaxe>);
craftingTable.remove(<item:aether:holystone_pickaxe>);
craftingTable.remove(<item:aether:zanite_pickaxe>);
craftingTable.remove(<item:aether:gravitite_pickaxe>);
craftingTable.remove(<item:iceandfire:silver_pickaxe>);
craftingTable.remove(<item:iceandfire:copper_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonbone_pickaxe>);
craftingTable.remove(<item:iceandfire:myrmex_desert_pickaxe>);
craftingTable.remove(<item:iceandfire:myrmex_jungle_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_fire_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_ice_pickaxe>);
craftingTable.remove(<item:iceandfire:dragonsteel_lightning_pickaxe>);
craftingTable.remove(<item:botania:elementium_pickaxe>);
craftingTable.remove(<item:immersiveengineering:ersatz_leather>);
craftingTable.remove(<item:railcraft:coke_oven_bricks>);

craftingTable.remove(<item:minecraft:stone_pickaxe>);
craftingTable.remove(<item:minecraft:stone_axe>);
craftingTable.remove(<item:minecraft:stone_shovel>);
craftingTable.remove(<item:minecraft:stone_hoe>);
craftingTable.remove(<item:minecraft:stone_sword>);

craftingTable.remove(<item:minecraft:golden_pickaxe>);
craftingTable.remove(<item:minecraft:golden_axe>);
craftingTable.remove(<item:minecraft:golden_shovel>);
craftingTable.remove(<item:minecraft:golden_hoe>);
craftingTable.remove(<item:minecraft:golden_sword>);

craftingTable.remove(<item:minecraft:iron_pickaxe>);
craftingTable.remove(<item:minecraft:iron_axe>);
craftingTable.remove(<item:minecraft:iron_shovel>);
craftingTable.remove(<item:minecraft:iron_hoe>);
craftingTable.remove(<item:minecraft:iron_sword>);

craftingTable.remove(<item:railcraft:coal_coke>);
craftingTable.remove(<item:railcraft:coal_coke_block>);
craftingTable.remove(<item:tfmg:coal_coke_block>);
craftingTable.remove(<item:tfmg:coal_coke>);
<recipetype:create:crushing>.remove(<item:tfmg:coal_coke_dust>);

craftingTable.remove(<item:minecraft:bucket>);
<recipetype:vintageimprovements:curving>.remove(<item:minecraft:bucket>);

<recipetype:minecraft:smelting>.remove(<item:minecraft:charcoal>);

Jei.hideIngredient(<item:railcraft:coal_coke>);
Jei.hideIngredient(<item:railcraft:coal_coke_block>);
Jei.hideIngredient(<item:tfmg:coal_coke_block>);
Jei.hideIngredient(<item:tfmg:coal_coke>);
Jei.hideIngredient(<item:railcraft:coke_oven_bricks>);
Jei.hideIngredient(<item:tfmg:coke_oven>);

craftingTable.removeByName("farmersdelight:cutting_board");

<recipetype:create:item_application>.remove(<item:tfmg:coke_oven>);


craftingTable.remove(<item:productivebees:honey_treat>);
craftingTable.addShapeless("handcrafted_honey_treat_3", <item:productivebees:honey_treat>*4, [<item:minecraft:honey_block>,<tag:items:forge:honeycombs>,<tag:items:forge:honeycombs>,<tag:items:forge:honeycombs>,<tag:items:forge:honeycombs>]);
craftingTable.addShapeless("handcrafted_honey_treat", <item:productivebees:honey_treat>, [<tag:items:forge:honeycombs>,<item:minecraft:honey_bottle>.transformReplace(<item:minecraft:glass_bottle>)]);
craftingTable.addShaped("handcrafted_honey_block",<item:minecraft:honey_block>, [
    [<item:firmalife:raw_honey>,<item:firmalife:raw_honey>],
    [<item:firmalife:raw_honey>,<item:firmalife:raw_honey>]]);

craftingTable.remove(<item:quark:stick_block>);
craftingTable.addShaped("handcrafted_quark_stick_block", <item:quark:stick_block>*9, [
    [<item:tfc:stick_bunch>,<item:tfc:stick_bunch>,<item:tfc:stick_bunch>],
    [<item:tfc:stick_bunch>,<item:tfc:stick_bunch>,<item:tfc:stick_bunch>],
    [<item:tfc:stick_bunch>,<item:tfc:stick_bunch>,<item:tfc:stick_bunch>]]);

craftingTable.remove(<item:productivebees:powered_centrifuge>);
craftingTable.addShaped("handcrafted_powered_centrifuge", <item:productivebees:powered_centrifuge>, [
    [<item:railcraft:charge_motor>],
    [<item:tfc:quern>],
    [<item:create:basin>]]);

<recipetype:create:emptying>.addJsonRecipe("drain_firmalife_honey_jar", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "firmalife:jar/honey"
    }
  ],
  "results": [
    {
      "item": "tfc:empty_jar"
    },
    {
      "amount": 250,
      "fluid": "create:honey"
    }
  ]
});

craftingTable.remove(<item:minecraft:glass_bottle>);
craftingTable.addShaped("handcrafted_glass_bottle", <item:minecraft:glass_bottle>*8,[
 [<tag:items:tfc:glass_bottles>,<tag:items:tfc:glass_bottles>,<tag:items:tfc:glass_bottles>],
 [<tag:items:tfc:glass_bottles>,<tag:items:forge:bottle_stopper>,<tag:items:tfc:glass_bottles>],
 [<tag:items:tfc:glass_bottles>,<tag:items:tfc:glass_bottles>,<tag:items:tfc:glass_bottles>]]);

//<recipetype:create:pressing>.remove(<item:minecraft:paper>);
<recipetype:create:pressing>.removeByName("create:pressing/sugar_cane");

craftingTable.remove(<item:tempad:tempad>);
craftingTable.addShaped("handcrafted_tempad", <item:tempad:tempad>, [
    [<item:tis3d:display_module>,<item:sgjourney:materialization_crystal>,<item:embers:dawnstone_ingot>],
    [<item:tis3d:keypad_module>,<item:sgjourney:reaction_chamber>,<item:railcraft:invar_ingot>],
    [<item:sgjourney:memory_crystal>,<item:ae2:fluix_crystal>,<item:immersiveengineering:ingot_electrum>]]);

craftingTable.remove(<item:minecraft:hopper>);
craftingTable.addShaped("handcrafted_hopper", <item:minecraft:hopper>, [
  [<tag:items:forge:sheets/lead>,<item:minecraft:air>,<tag:items:forge:sheets/lead>],
  [<item:minecraft:air>,<tag:items:forge:chests>,<item:minecraft:air>]]);

<recipetype:create:mechanical_crafting>.addJsonRecipe("he_who_remains_tempad_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "A": { 
      "item": "ae2:singularity"
    },
    "L": {
      "item": "sgjourney:large_control_crystal"
    },
    "M": {
      "item": "sgjourney:memory_crystal"
    },
    "F": {
      "item": "ae2:fluix_crystal"
    },        
    "B": {
      "item": "minecraft:blaze_rod"
    },
    "N": {
    "item": "sgjourney:naquadah_alloy"
    }
  },
  "pattern": [
    "NBNNB",
    "BBMBN",
    "NFAFN",
    "NBLBB",
    "BNNBN"
  ],
  "result": {
    "count": 1,
    "item": "tempad:he_who_remains_tempad"
  }
});  


craftingTable.remove(<item:minecraft:map>);
craftingTable.addShapeless("map_8", <item:minecraft:map>*8, [<item:firmaciv:nav_clock>.reuse(),<item:firmaciv:sextant>.reuse(),<tag:items:forge:paper>]);
craftingTable.addShapeless("map_1", <item:minecraft:map>, [<tag:items:forge:dyes>,<item:chiselsandbits:quill>.reuse(),<tag:items:forge:paper>]);

<recipetype:minecraft:crafting>.addJsonRecipe("banana_paperstrip", {
    "type": "tfc:damage_inputs_shapeless_crafting",
    "recipe": {
        "type": "minecraft:crafting_shapeless",
        "ingredients": [{
            "item": "tfc:food/banana",
            //"trait": "tfcfood:traits:firmalife:dried"
        }, {
            "tag": "tfc:knives"
        }],
        "result": {
            "item": "tfc:soaked_papyrus_strip"
        }
    }
});

<recipetype:tfc:barrel_sealed>.addJsonRecipe("bark_soaked_papyrus_strip", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "tag": "forge:bark"
        }
    },
    "input_fluid": {
        "ingredient": "tfc:limewater",
        "amount": 500
    },
    "output_item": {
        "item": "tfc:soaked_papyrus_strip"
    },
    "duration": 8000
});
/*
<recipetype:tfc:barrel_sealed>.addJsonRecipe("ash2ash", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "item": "tfc:powder/wood_ash"
        }
    },
    "input_fluid": {
        "ingredient": "minecraft:water",
        "amount": 500
    },
    "output_item": {
        "item": "embers:ash"
    },
    "output_fluid": {
        "fluid": "tfc:light_gray_dye",
        "amount": 500
    },
    "duration": 8000
});
*/
craftingTable.remove(<item:minecraft:torch>);
craftingTable.addShaped("handcrafted_everlasting_torch", <item:minecraft:torch>,
[[<item:embers:ember_crystal>],
[<tag:items:forge:rods/wooden>]]);

craftingTable.remove(<item:minecraft:candle>);
craftingTable.addShaped("handcrafted_everlasting_candle", <item:minecraft:candle>,
[[<item:kubejs:glowstring>],
[<item:kubejs:unfinished_candle>]]);

craftingTable.remove(<item:tfc:candle>);
craftingTable.addShaped("handcrafted_candle", <item:tfc:candle>,
[[<tag:items:forge:string>],
[<item:kubejs:unfinished_candle>]]);

//<recipetype:create:filling>.addRecipe("glowstring", <item:kubejs:glowstring>, <tag:items:forge:string>, <fluid:create_dd:glowberry>, 100);

function addWaxKnapping(Row1 as string, Row2 as string, Row3 as string, Row4 as string, Row5 as string, ItemOut as string) as void { 
craftingTable.remove(<item:${ItemOut}>);
<recipetype:tfc:knapping>.addJsonRecipe("wax_knapping_" + ItemOut.replace(":","_"), {
    "type": "tfc:knapping",
    "knapping_type": "kubejs:wax",
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

addWaxKnapping(
        "  X  ",
        " XXX ",
        " XXX ",
        " XXX ",
        " XXX ",
"kubejs:unfinished_candle");

addWaxKnapping(
        "     ",
        "     ",
        "XXXXX",
        " XXX ",
        "XX XX",
"kubejs:wax_anvil");

<recipetype:tfc:anvil>.addJsonRecipe("anvil_stainless_steel_mc_bucket", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:sheets/stainless_steel"
  },
  "result": {
    "item": "minecraft:bucket"
  },
  "tier": 4,
  "rules": [
    "bend_last",
    "bend_second_last",
    "bend_third_last"
  ]
}
);
craftingTable.remove(<item:immersiveengineering:wirecoil_redstone>);
craftingTable.addShaped("handcrafted_redstone_spool", <item:immersiveengineering:wirecoil_redstone>,[
    [<item:morered:red_alloy_wire>,<item:morered:red_alloy_wire>,<item:morered:red_alloy_wire>],
    [<item:morered:red_alloy_wire>,<item:kubejs:emptyspool>,<item:morered:red_alloy_wire>],
    [<item:morered:red_alloy_wire>,<item:morered:red_alloy_wire>,<item:morered:red_alloy_wire>]]);  

craftingTable.remove(<item:morered:redwire_spool>);
craftingTable.addShaped("handcrafted_redwire_spool", <item:morered:redwire_spool>,[
    [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/wooden>],
    [<item:minecraft:air>,<item:immersiveengineering:wirecoil_redstone>,<item:minecraft:air>],
    [<tag:items:forge:rods/wooden>,<item:minecraft:air>,<item:minecraft:air>]]);      

craftingTable.remove(<item:morered:bundled_cable_spool>);
craftingTable.addShaped("handcrafted_bundled_cable_spool", <item:morered:bundled_cable_spool>,[
    [<item:morered:bundled_network_cable>,<item:morered:bundled_network_cable>,<item:morered:bundled_network_cable>],
    [<item:morered:bundled_network_cable>,<item:kubejs:emptyspool>,<item:morered:bundled_network_cable>],
    [<item:morered:bundled_network_cable>,<item:morered:bundled_network_cable>,<item:morered:bundled_network_cable>]]);  

craftingTable.addShaped("handcrafted_emptyspool", <item:kubejs:emptyspool>,[
    [<tag:items:quark:wooden_vertical_slabs>,<tag:items:forge:rods/wooden>,<tag:items:quark:wooden_vertical_slabs>]]);  

//=====================================================================


craftingTable.remove(<item:packingtape:tape>);
craftingTable.addShaped("handcrafted_packingtape", <item:packingtape:tape>,[
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:paper>],
    [<item:minecraft:air>,<tag:items:map_atlases:sticky_crafting_items>,<item:minecraft:paper>],
    [<item:minecraft:paper>,<item:minecraft:paper>,<item:minecraft:air>]]);  

craftingTable.remove(<item:minecraft:slime_ball>);
craftingTable.addShapeless("handcrafted_slime_balls", <item:minecraft:slime_ball>, [<item:tfc:ore/borax>,<item:tfc:glue>,<item:tfc:glue>]);    

//Chalk 
var Colours = ["white","light_gray","gray","black","brown","red","orange","yellow","lime","green","cyan","light_blue","blue","purple","magenta","pink"];
for dye in Colours{
craftingTable.remove(<item:chalk:${dye}_chalk>);

<recipetype:tfc:barrel_sealed>.addJsonRecipe("barrel_chalk" + dye, {
  "type": "tfc:barrel_sealed",
  "input_item": {
    "ingredient": {
      "item": "chalk:white_chalk"
    }
  },
  "input_fluid": {
    "ingredient": "tfc:" + dye + "_dye",
    "amount": 25
  },
  "output_item": {
    "item": "chalk:" + dye + "_chalk"
  },
  "duration": 1000
});    
}

craftingTable.addShaped("handcrafted_white_chalk", <item:chalk:white_chalk>, [
    [<item:tfc:rock/loose/chalk>],
    [<item:tfc:rock/loose/chalk>]]);

/*
<recipetype:embers:stamping>.addJsonRecipe("embers_disc_stamp_1", {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 100,
     "name": 'pneumaticcraft:plastic'
    },
  "output": 'tfc:blank_disc',
  "stamp": 'minecraft:music_discs'
}
);*/
//addEmbersStamping(<fluid:pneumaticcraft:plastic>,<item:tfc:blank_disc>,<tag:items:minecraft:music_discs>);
//addEmbersStamping(<fluid:tfmg:liquid_plastic>,<item:tfc:blank_disc>,<tag:items:minecraft:music_discs>);


//=====================================================================

//MUSKETS


craftingTable.remove(<item:musketmod:pistol>);
craftingTable.addShaped("handcrafted_musket_pistol", <item:musketmod:pistol>,[
    [<tag:items:forge:rods/iron>,<item:minecraft:flint_and_steel>],
    [<tag:items:forge:nuggets/iron>,<item:tfc:brass_mechanisms>],
    [<item:minecraft:air>,<item:immersiveengineering:wooden_grip>]]);  

craftingTable.remove(<item:musketmod:musket>);
craftingTable.addShaped("handcrafted_musket", <item:musketmod:musket>,[
    [<tag:items:forge:rods/iron>,<item:minecraft:air>,<item:minecraft:flint_and_steel>],
    [<item:minecraft:air>,<tag:items:forge:rods/iron>,<item:tfc:brass_mechanisms>],
    [<item:minecraft:air>,<tag:items:forge:nuggets/iron>,<item:immersiveengineering:wooden_grip>]]);  

craftingTable.remove(<item:musketmod:musket_with_bayonet>);
craftingTable.addShapeless("handcrafted_musket_with_bayonet",<item:musketmod:musket_with_bayonet>, [<item:tfc:metal/knife_blade/wrought_iron>,<item:musketmod:musket>]);   

craftingTable.remove(<item:musketmod:cartridge>);
craftingTable.addShaped("handcrafted_cartridge", <item:musketmod:cartridge>*8,[
    [<tag:items:forge:paper>,<tag:items:forge:nuggets/tin>],
    [<tag:items:forge:coal>,<tag:items:forge:paper>]]);

craftingTable.addShaped("handcrafted_cartridge_3", <item:musketmod:cartridge>*32,[
    [<tag:items:forge:paper>,<tag:items:forge:nuggets/bronze>],
    [<tag:items:forge:coal>,<tag:items:forge:paper>]]);       