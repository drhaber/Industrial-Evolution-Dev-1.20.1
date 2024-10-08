

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:botania:apothecary_default>);
craftingTable.addShaped("handcrafted_apothecary_default", <item:botania:apothecary_default>,[
    [<tag:items:tfc:rock/bricks>,<tag:items:botania:petals>,<tag:items:tfc:rock/bricks>],
    [<item:minecraft:air>,<tag:items:tfc:rock/bricks>,<item:minecraft:air>],
    [<tag:items:tfc:rock/bricks>,<tag:items:tfc:rock/bricks>,<tag:items:tfc:rock/bricks>]]);  

craftingTable.remove(<item:botania:apothecary_mossy>);
craftingTable.addShaped("handcrafted_apothecary_mossy", <item:botania:apothecary_mossy>,[
    [<tag:items:tfc:rock/mossy_bricks>,<tag:items:botania:petals>,<tag:items:tfc:rock/mossy_bricks>],
    [<item:minecraft:air>,<tag:items:tfc:rock/mossy_bricks>,<item:minecraft:air>],
    [<tag:items:tfc:rock/mossy_bricks>,<tag:items:tfc:rock/mossy_bricks>,<tag:items:tfc:rock/mossy_bricks>]]);  

craftingTable.remove(<item:botania:mana_spreader>);
craftingTable.addShaped("handcrafted_mana_spreader", <item:botania:mana_spreader>, [
    [<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>],
    [<item:railcraft:gold_electrode>,<tag:items:botania:petals>,<item:aether:golden_ring>],
    [<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>]]);

<recipetype:botania:mana_infusion>.remove(<item:botania:manasteel_ingot>);
<recipetype:botania:mana_infusion>.remove(<item:botania:manasteel_block>);
<recipetype:botania:mana_infusion>.addJsonRecipe("mana_infusion_manasteel_ingot", {
  "type": "botania:mana_infusion",
  "input": {
    "tag": "forge:ingots/cast_iron"
  },
  "mana": 3000,
  "output": {
    "item": "botania:manasteel_ingot"
  }
});    



<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_axe", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_axe"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_second_last",
    "upset_third_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_hoe", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_hoe"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_not_last",
    "bend_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_knife", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_knife"
  },
  "tier": 3,
  "rules": [
    "hit_last",
    "draw_second_last",
    "draw_third_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_pick", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_pick"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "bend_not_last",
    "draw_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_shovel", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_shovel"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_sword", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_sword"
  },
  "tier": 3,
  "rules": [
    "hit_last",
    "bend_second_last",
    "bend_third_last"
  ]
});

craftingTable.remove(<item:botania:manasteel_axe>);
craftingTable.remove(<item:botania:manasteel_hoe>);
craftingTable.remove(<item:botania:manasteel_shears>);
craftingTable.remove(<item:botania:manasteel_pick>);
craftingTable.remove(<item:botania:manasteel_shovel>);
craftingTable.remove(<item:botania:manasteel_sword>);

craftingTable.addShaped("handcrafted_mana_axe", <item:botania:manasteel_axe>,[
    [<item:kubejs:manasteel_axe>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_hoe", <item:botania:manasteel_hoe>,[
    [<item:kubejs:manasteel_hoe>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_pick", <item:botania:manasteel_pick>,[
    [<item:kubejs:manasteel_pick>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_shovel", <item:botania:manasteel_shovel>,[
    [<item:kubejs:manasteel_shovel>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_sword", <item:botania:manasteel_sword>,[
    [<item:kubejs:manasteel_sword>],
    [<tag:items:forge:rods/wooden>]]);

<recipetype:tfc:welding>.addJsonRecipe("weld_manasteel_shears", {
  "type": "tfc:welding",
  "first_input": {
    "item": "kubejs:manasteel_knife"
  },
  "second_input": {
    "item": "kubejs:manasteel_knife"
  },
  "tier": 3,
  "result": {
    "item": "botania:manasteel_shears"
  }
});