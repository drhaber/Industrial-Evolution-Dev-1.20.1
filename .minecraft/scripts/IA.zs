

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:immersive_aircraft:boiler>);
craftingTable.addShaped("handcrafted_aircraft_boiler", <item:immersive_aircraft:boiler>,[
  [<tag:items:forge:sheets/rose_gold>,<item:create:fluid_pipe>,<tag:items:forge:sheets/rose_gold>],
  [<tag:items:forge:sheets/rose_gold>,<item:minecraft:air>,<tag:items:forge:sheets/rose_gold>],
  [<tag:items:forge:sheets/rose_gold>,<item:tfc:metal/bars/copper>,<tag:items:forge:sheets/rose_gold>]]);      

craftingTable.remove(<item:immersive_aircraft:steel_boiler>);
craftingTable.addShaped("handcrafted_aircraft_steel_boiler", <item:immersive_aircraft:steel_boiler>,[
  [<tag:items:forge:sheets/steel>,<item:tfmg:steel_pipe>,<tag:items:forge:sheets/steel>],
  [<tag:items:forge:sheets/steel>,<item:minecraft:air>,<tag:items:forge:sheets/steel>],
  [<tag:items:forge:sheets/steel>,<item:tfc:metal/bars/steel>,<tag:items:forge:sheets/steel>]]);   