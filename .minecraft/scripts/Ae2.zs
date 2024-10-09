

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:more_immersive_wires:ae_coil>);
craftingTable.addShaped("handcrafted_glass_wire_spool", <item:more_immersive_wires:ae_coil>,[
    [<tag:items:ae2:glass_cable>,<tag:items:ae2:glass_cable>,<tag:items:ae2:glass_cable>],
    [<tag:items:ae2:glass_cable>,<item:kubejs:emptyspool>,<tag:items:ae2:glass_cable>],
    [<tag:items:ae2:glass_cable>,<tag:items:ae2:glass_cable>,<tag:items:ae2:glass_cable>]]);  

craftingTable.remove(<item:more_immersive_wires:ae_dense_coil>);
craftingTable.addShaped("handcrafted_dense_wire_spool", <item:more_immersive_wires:ae_dense_coil>,[
    [<tag:items:ae2:covered_dense_cable>,<tag:items:ae2:covered_dense_cable>,<tag:items:ae2:covered_dense_cable>],
    [<tag:items:ae2:covered_dense_cable>,<item:kubejs:emptyspool>,<tag:items:ae2:covered_dense_cable>],
    [<tag:items:ae2:covered_dense_cable>,<tag:items:ae2:covered_dense_cable>,<tag:items:ae2:covered_dense_cable>]]);      


craftingTable.remove(<item:appbot:mana_cell_housing>);
<recipetype:create:mechanical_crafting>.addJsonRecipe("mana_cell_housing_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": true,
  "key": {
    "G": { 
      "item": "ae2:quartz_glass"
    },
    "S": {
      "item": "botania:manasteel_ingot"
    },
    "W": {
      "item": "kubejs:fluix_wire"
    }
  },
  "pattern": [
    " SGS ",
    "SWWWS",
    "SW WS",
    "SWWWS",
    " SSSW"
  ],
  "result": {
    "count": 1,
    "item": "appbot:mana_cell_housing"
  }
});  

craftingTable.remove(<item:ae2:item_cell_housing>);
<recipetype:create:mechanical_crafting>.addJsonRecipe("item_cell_housing_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": true,
  "key": {
    "G": { 
      "item": "ae2:quartz_glass"
    },
    "S": {
      "item": "tfc:metal/sheet/steel"
    },
    "W": {
      "item": "kubejs:fluix_wire"
    }
  },
  "pattern": [
    " SGS ",
    "SWWWS",
    "SW WS",
    "SWWWS",
    " SSSW"
  ],
  "result": {
    "count": 1,
    "item": "ae2:item_cell_housing"
  }
});  

craftingTable.remove(<item:ae2:fluid_cell_housing>);
<recipetype:create:mechanical_crafting>.addJsonRecipe("fluid_cell_housing_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": true,
  "key": {
    "G": { 
      "item": "ae2:quartz_glass"
    },
    "S": {
      "item": "tfc:metal/sheet/red_steel"
    },
    "W": {
      "item": "kubejs:fluix_wire"
    }
  },
  "pattern": [
    " SGS ",
    "SWWWS",
    "SW WS",
    "SWWWS",
    " SSSW"
  ],
  "result": {
    "count": 1,
    "item": "ae2:fluid_cell_housing"
  }
});