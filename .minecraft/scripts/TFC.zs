

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

<recipetype:tfc:quern>.addJsonRecipe("sawdust_from_sticks", {
    "type": "tfc:quern",
    "ingredient": {
        "tag": "forge:rods/wooden"
    },
    "result": {
        "item": "immersiveengineering:dust_wood"
    }
});

<recipetype:tfc:quern>.addJsonRecipe("sawdust_from_logs", {
    "type": "tfc:quern",
    "ingredient": {
        "tag": "minecraft:logs"
    },
    "result": {
        "item": "immersiveengineering:dust_wood",
        "count": 3
    }
});

<recipetype:tfc:quern>.addJsonRecipe("sawdust_from_lumber", {
    "type": "tfc:quern",
    "ingredient": {
        "tag": "tfc:lumber"
    },
    "result": {
        "item": "immersiveengineering:dust_wood",
        "count": 2
    }
});

<recipetype:tfc:quern>.addJsonRecipe("sawdust_from_planks", {
    "type": "tfc:quern",
    "ingredient": {
        "tag": "minecraft:planks"
    },
    "result": {
        "item": "immersiveengineering:dust_wood",
        "count": 4
    }
});

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