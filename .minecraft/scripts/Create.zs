

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

//Generators
craftingTable.remove(<item:create_new_age:carbon_brushes>);
craftingTable.addShaped("handcrafted_carbon_brushes", <item:create_new_age:carbon_brushes>, [
    [<tag:items:forge:rods/cast_iron>,<item:railcraft:carbon_electrode>,<tag:items:forge:rods/cast_iron>],
    [<tag:items:forge:sheets/copper>,<item:create:shaft>,<tag:items:forge:sheets/copper>],
    [<tag:items:forge:rods/cast_iron>,<item:railcraft:carbon_electrode>,<tag:items:forge:rods/cast_iron>]]);

craftingTable.remove(<item:create_new_age:generator_coil>);
craftingTable.addShaped("handcrafted_new_age_generator_coil", <item:create_new_age:generator_coil>, [
    [<item:immersiveengineering:coil_lv>,<item:immersiveengineering:coil_lv>,<item:immersiveengineering:coil_lv>],
    [<item:immersiveengineering:coil_lv>,<item:create:shaft>,<item:immersiveengineering:coil_lv>],
    [<item:immersiveengineering:coil_lv>,<item:immersiveengineering:coil_lv>,<item:immersiveengineering:coil_lv>]]);

craftingTable.remove(<item:createaddition:alternator>);
craftingTable.addShaped("handcrafted_alternator_dynamo", <item:createaddition:alternator>,[
    [<tag:items:forge:sheets/steel>,<item:immersiveengineering:dynamo>,<tag:items:forge:sheets/steel>],
    [<item:immersiveengineering:dynamo>,<item:immersiveengineering:capacitor_lv>,<item:immersiveengineering:dynamo>],
    [<tag:items:forge:sheets/steel>,<item:immersiveengineering:dynamo>,<tag:items:forge:sheets/steel>]]);          