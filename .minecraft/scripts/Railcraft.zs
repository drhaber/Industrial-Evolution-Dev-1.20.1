

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

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
