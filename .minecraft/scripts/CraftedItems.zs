import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.tag.manager.ITagManager;


craftingTable.remove(<item:productivebees:centrifuge>);
craftingTable.remove(<item:productivebees:heated_centrifuge>);
craftingTable.remove(<item:minecraft:paper>);
<recipetype:create:pressing>.remove(<item:minecraft:paper>);

craftingTable.remove(<item:create:belt_connector>);
craftingTable.addShaped("handcrafted_create_belt_leather", <item:create:belt_connector>*8,
[[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>],
[<tag:items:tfc:chains>,<tag:items:tfc:chains>,<tag:items:tfc:chains>],
[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>]]);

craftingTable.remove(<item:minecraft:torch>);
craftingTable.addShaped("handcrafted_everlasting_torch", <item:minecraft:torch>,
[[<item:embers:ember_crystal>],
[<tag:items:forge:rods/wooden>]]);


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