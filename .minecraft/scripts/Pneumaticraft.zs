

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:pneumaticcraft:pneumatic_dynamo>);
craftingTable.addShaped("handcrafted_pneumatic_dynamo", <item:pneumaticcraft:pneumatic_dynamo>,[
    [<tag:items:forge:sheets/steel>,<item:createdieselgenerators:engine_piston>,<tag:items:forge:sheets/steel>],
    [<item:pneumaticcraft:advanced_pressure_tube>,<tag:items:forge:gears/compressed_iron>,<item:immersiveengineering:dynamo>],
    [<tag:items:forge:sheets/steel>,<item:createdieselgenerators:engine_piston>,<tag:items:forge:sheets/steel>]]);  
