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

craftingTable.remove(<item:productivebees:centrifuge>);
craftingTable.remove(<item:productivebees:heated_centrifuge>);
craftingTable.remove(<item:minecraft:paper>);
<recipetype:create:pressing>.remove(<item:minecraft:paper>);

craftingTable.remove(<item:create:belt_connector>);
craftingTable.addShaped("handcrafted_create_belt_leather", <item:create:belt_connector>*8,
[[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>],
[<tag:items:tfc:chains>,<tag:items:tfc:chains>,<tag:items:tfc:chains>],
[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>]]);

<recipetype:createaddition:rolling>.addJsonRecipe("rolled_create_belt_rubber", {
	"type":"createaddition:rolling",
	"input": {
      	"item": "create_dd:rubber"
	},
	"result": {
		"item": "create:belt_connector",
		"count": 3
	}
});
craftingTable.remove(<item:productivebees:powered_centrifuge>);
craftingTable.addShaped("handcrafted_powered_centrifuge", <item:productivebees:powered_centrifuge>, [
    [<item:railcraft:charge_motor>],
    [<item:tfc:quern>],
    [<item:create:basin>]]);

craftingTable.addShaped("magnetite_block", <item:create_new_age:magnetite_block>, [
    [<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>],
    [<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>],
    [<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>,<item:tfc:ore/rich_magnetite>],]);
craftingTable.addShapeless("rich_magnetite", <item:tfc:ore/rich_magnetite>*9, [<item:create_new_age:magnetite_block>]);

craftingTable.remove(<item:tempad:tempad>);
craftingTable.addShaped("handcrafted_tempad", <item:tempad:tempad>, [
    [<item:tis3d:display_module>,<item:sgjourney:materialization_crystal>,<item:embers:dawnstone_ingot>],
    [<item:tis3d:keypad_module>,<item:sgjourney:reaction_chamber>,<item:railcraft:invar_ingot>],
    [<item:sgjourney:memory_crystal>,<item:ae2:fluix_crystal>,<item:immersiveengineering:ingot_electrum>]]);

<recipetype:immersiveengineering:blueprint>.remove(<item:immersiveengineering:electron_tube>);
craftingTable.addShaped("handcrafted_electron_tube", <item:immersiveengineering:electron_tube>, [
    [<item:minecraft:air>,<item:kubejs:casing_electron_tube>,<item:minecraft:air>],
    [<item:immersiveengineering:stick_aluminum>,<item:tfc:metal/sheet/gold>,<item:railcraft:nickel_electrode>],
    [<item:immersiveengineering:wire_copper>,<item:kubejs:ceramic_insulator>,<item:immersiveengineering:wire_copper>]]);

craftingTable.remove(<item:sgjourney:reaction_chamber>);
<recipetype:create:mechanical_crafting>.addJsonRecipe("reaction_chamber_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "A": { 
      "item": "embers:archaic_bricks"
    },
    "C": {
      "item": "immersiveengineering:concrete_leaded"
    },
    "B": {
      "item": "immersiveengineering:blastbrick_reinforced"
    },
    "N": {
    "item": "sgjourney:pure_naquadah"
    }
  },
  "pattern": [
    "AAAAAAA",
    "ACCCCCA",
    "ACBBBCA",
    "ACBNBCA",
    "ACBBBCA",
    "ACCCCCA",
    "AAAAAAA"
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:reaction_chamber"
  }
});  

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
craftingTable.addShapeless("map_1", <item:minecraft:map>, [<item:firmaciv:nav_clock>.reuse(),<item:firmaciv:sextant>.reuse(),<tag:items:forge:paper>]);

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

<recipetype:create:filling>.addRecipe("glowstring", <item:kubejs:glowstring>, <tag:items:forge:string>, <fluid:create_dd:glowberry>, 100);

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

//=====================================================================

//Generators
craftingTable.remove(<item:create_new_age:carbon_brushes>);
craftingTable.addShaped("handcrafted_carbon_brushes", <item:create_new_age:carbon_brushes>, [
    [<tag:items:forge:rods/cast_iron>,<item:railcraft:carbon_electrode>,<tag:items:forge:rods/cast_iron>],
    [<tag:items:forge:sheets/copper>,<item:create:shaft>,<tag:items:forge:sheets/copper>],
    [<tag:items:forge:rods/cast_iron>,<item:railcraft:carbon_electrode>,<tag:items:forge:rods/cast_iron>]]);

//Chalk 
var Colours = ["white","light_gray","gray","black","brown","red","orange","yellow","lime","green","cyan","light_blue","blue","purple","magenta","pink"];
for dye in Colours{
craftingTable.remove(<item:chalk:${dye}_chalk>);
craftingTable.addShaped("handcrafted_chalk" + dye, <item:chalk:${dye}_chalk>, [
    [<tagmanager:items>.tag("forge:dyes/" + dye)],
    [<item:tfc:rock/loose/chalk>],
    [<item:tfc:rock/loose/chalk>]]);
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