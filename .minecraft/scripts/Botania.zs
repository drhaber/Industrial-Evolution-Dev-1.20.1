

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