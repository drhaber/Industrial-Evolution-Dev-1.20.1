

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:embers:ember_bore>);
craftingTable.addShaped("handcrafted_ember_bore", <item:embers:ember_bore>,[
  [<item:embers:caminite_bricks>,<item:embers:mechanical_core>,<item:embers:caminite_bricks>],
  [<tag:items:forge:plates/lead>,<tag:items:forge:plates/lead>,<tag:items:forge:plates/lead>]]);      

craftingTable.remove(<item:embers:mechanical_core>);
craftingTable.addShaped("handcrafted_mechanical_core", <item:embers:mechanical_core>,[
  [<item:embers:caminite_bricks>,<item:minecraft:hopper>,<item:embers:caminite_bricks>],
  [<item:createdieselgenerators:engine_piston>,<item:create:shaft>,<item:createdieselgenerators:engine_piston>],
  [<tag:items:forge:ingots/lead>,<item:minecraft:air>,<tag:items:forge:ingots/lead>]]);      

craftingTable.remove(<item:embers:ancient_codex>);
craftingTable.addShapeless("handcrafted_ancient_codex", <item:embers:ancient_codex>, [<item:embers:caminite_plate>,<item:minecraft:book>,<item:tfc:powder/wood_ash>]);