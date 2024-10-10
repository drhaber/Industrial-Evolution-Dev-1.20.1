

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;


craftingTable.remove(<item:railcraft:nickel_zinc_battery>);
craftingTable.remove(<item:railcraft:nickel_iron_battery>);
craftingTable.remove(<item:railcraft:zinc_carbon_battery>);
craftingTable.remove(<item:railcraft:zinc_silver_battery>);
//craftingTable.remove(<item:minecraft:rail>);

Jei.hideIngredient(<item:railcraft:nickel_zinc_battery>);
Jei.hideIngredient(<item:railcraft:nickel_iron_battery>);
Jei.hideIngredient(<item:railcraft:zinc_carbon_battery>);
Jei.hideIngredient(<item:railcraft:zinc_silver_battery>);
Jei.hideIngredient(<item:railcraft:zinc_carbon_battery_empty>);
Jei.hideIngredient(<item:railcraft:zinc_silver_battery_empty>);

function addElectrode(ItemIn as string, itemOut as string, Tier as int) as void { 
<recipetype:tfc:anvil>.addJsonRecipe("electrode_anvil_" + itemOut.replace(":","_"), {
  "type": "tfc:anvil",
  "input": {
    "item": ItemIn
  },
  "result": {
    "item": itemOut
  },
  "tier": Tier,
  "rules": [
    "shrink_last",
    "draw_second_last",
    "hit_third_last"
  ]
}
);
}

<recipetype:railcraft:rolling>.remove(<item:railcraft:iron_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:copper_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:gold_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:lead_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:nickel_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:silver_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:tin_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:zinc_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:steel_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:brass_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:bronze_electrode>);
<recipetype:railcraft:rolling>.remove(<item:railcraft:carbon_electrode>);

addElectrode("tfc:metal/ingot/wrought_iron","railcraft:iron_electrode",3);
addElectrode("tfc:metal/ingot/copper","railcraft:copper_electrode",1);
addElectrode("tfc:metal/ingot/gold","railcraft:gold_electrode",1);
addElectrode("immersiveengineering:ingot_lead","railcraft:lead_electrode",1);
addElectrode("tfc:metal/ingot/nickel","railcraft:nickel_electrode",1);
addElectrode("tfc:metal/ingot/silver","railcraft:silver_electrode",1);
addElectrode("tfc:metal/ingot/tin","railcraft:tin_electrode",1);
addElectrode("tfc:metal/ingot/zinc","railcraft:zinc_electrode",1);
addElectrode("tfc:metal/ingot/steel","railcraft:steel_electrode",4);
addElectrode("tfc:metal/ingot/brass","railcraft:brass_electrode",2);
addElectrode("tfc:metal/ingot/bronze","railcraft:bronze_electrode",2);

craftingTable.addShaped("handcrafted_carbon_electrode", <item:railcraft:carbon_electrode>,
[[<item:minecraft:air>,<item:minecraft:air>,<item:tfc:powder/graphite>],
[<item:minecraft:air>,<item:tfc:powder/native_copper>,<item:immersiveengineering:phenolic_resin_bucket>.transformReplace(<item:minecraft:bucket>)],
[<item:tfc:powder/graphite>,<item:minecraft:air>,<item:minecraft:air>]]);

craftingTable.addShaped("handcrafted_carbon_electrode_oredict", <item:railcraft:carbon_electrode>,
[[<item:minecraft:air>,<item:minecraft:air>,<item:tfc:powder/graphite>],
[<item:minecraft:air>,<tag:items:forge:dusts/copper>,<item:immersiveengineering:phenolic_resin_bucket>.transformReplace(<item:minecraft:bucket>)],
[<item:tfc:powder/graphite>,<item:minecraft:air>,<item:minecraft:air>]]);

craftingTable.addShaped("handcrafted_carbon_electrode_wooden_bucket", <item:railcraft:carbon_electrode>,
[[<item:minecraft:air>,<item:minecraft:air>,<item:tfc:powder/graphite>],
[<item:minecraft:air>,<item:tfc:powder/native_copper>,<item:tfc:wooden_bucket>.withTag({fluid: {FluidName: "immersiveengineering:phenolic_resin", Amount: 1000}}).transformReplace(<item:tfc:wooden_bucket>)],
[<item:tfc:powder/graphite>,<item:minecraft:air>,<item:minecraft:air>]]);

craftingTable.addShaped("handcrafted_carbon_electrode_oredict_wooden_bucket", <item:railcraft:carbon_electrode>,
[[<item:minecraft:air>,<item:minecraft:air>,<item:tfc:powder/graphite>],
[<item:minecraft:air>,<tag:items:forge:dusts/copper>,<item:tfc:wooden_bucket>.withTag({fluid: {FluidName: "immersiveengineering:phenolic_resin", Amount: 1000}}).transformReplace(<item:tfc:wooden_bucket>)],
[<item:tfc:powder/graphite>,<item:minecraft:air>,<item:minecraft:air>]]);

