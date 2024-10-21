

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:minecraft:string>);
craftingTable.addShapeless("string_from_jute", <item:minecraft:string>, [<tag:items:forge:fiber_hemp>,<item:tfc:spindle>.anyDamage().transformDamage()]);

craftingTable.removeByName("supplementaries:soap");
<recipetype:tfc:barrel_sealed>.addJsonRecipe("soap_to_soap", {
    "type": "tfc:barrel_sealed",
    "input_item": {
        "ingredient": {
            "item": "tfc:powder/flux"
        }
    },
    "input_fluid": {
        "ingredient": "artisanal:soap",
        "amount": 100
    },
    "output_item": {
        "item": "supplementaries:soap"
    },
    "duration": 8000
});

function addGrinding(ItemIn as string, ItemOut as string, QtyO as int) as void { 
<recipetype:tfc:quern>.addJsonRecipe("quern_grind_" + ItemIn.replace(":","_") + ItemOut.replace(":","_"), {
    "type": "tfc:quern",
    "ingredient": {
        "tag": ItemIn
    },
    "result": {
        "item": ItemOut,
        "count": QtyO
    }
});
<recipetype:create:milling>.addJsonRecipe("milling_grind_" + ItemIn.replace(":","_") + ItemOut.replace(":","_"), {
  "type": "create:milling",
  "ingredients": [
    {
      "tag": ItemIn
    }
  ],
  "processingTime": 50,
  "results": [
    {
      "count": QtyO,
      "item": ItemOut
    }
  ]
});
}

addGrinding("forge:rods/wooden","immersiveengineering:dust_wood",1);
addGrinding("minecraft:logs","immersiveengineering:dust_wood",3);
addGrinding("tfc:lumber","immersiveengineering:dust_wood",2);
addGrinding("minecraft:planks","immersiveengineering:dust_wood",4);

<recipetype:tfc:loom>.addJsonRecipe("woven_memory", {
    "type": "tfc:loom",
    "ingredient": {
       "ingredient": {
           "tag": "forge:wires/copper"
        },
        "count": 8
    },
    "result": {
        "item": "kubejs:woven_memory",
        "count": 1
    },
    "steps_required": 8,
    "in_progress_texture": "tfc:block/rooted_dirt/loam"
});