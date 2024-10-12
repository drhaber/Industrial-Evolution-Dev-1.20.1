

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.tag.manager.ITagManager;

function addDaisyPurify(BlockIn as string, BlockOut as string) as void { 
<recipetype:botania:pure_daisy>.addJsonRecipe("daisy_purify" + BlockIn.replace(":","_") + BlockOut.replace(":","_"), {
  "type": "botania:pure_daisy",
  "input": {
    "type": "tag",
    "tag": BlockIn
  },
  "output": {
    "name": BlockOut
  }
});
}

addDaisyPurify("tfc:sand","minecraft:sand");
addDaisyPurify("tfc:cobblestone","minecraft:cobblestone");
addDaisyPurify("tfc:rock/raw","minecraft:stone");
addDaisyPurify("tfc:rock/gravel","minecraft:gravel");
addDaisyPurify("tfc:dirt","minecraft:dirt");