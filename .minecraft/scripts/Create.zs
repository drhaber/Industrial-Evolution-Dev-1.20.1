

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:create:large_water_wheel>);
craftingTable.addShaped("handcrafted_create_large_watermill", <item:create:large_water_wheel>,[
    [<tag:items:tfc:lumber>,<tag:items:minecraft:planks>,<tag:items:tfc:lumber>],
    [<tag:items:minecraft:planks>,<item:create:shaft>,<tag:items:minecraft:planks>],
    [<tag:items:tfc:lumber>,<tag:items:minecraft:planks>,<tag:items:tfc:lumber>]]);    

craftingTable.remove(<item:create:water_wheel>);
craftingTable.addShaped("handcrafted_create_watermill", <item:create:water_wheel>,[
    [<tag:items:tfc:lumber>,<tag:items:tfc:lumber>,<tag:items:tfc:lumber>],
    [<tag:items:tfc:lumber>,<item:create:shaft>,<tag:items:tfc:lumber>],
    [<tag:items:tfc:lumber>,<tag:items:tfc:lumber>,<tag:items:tfc:lumber>]]);        