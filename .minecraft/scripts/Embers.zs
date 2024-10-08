

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:embers:lead_sword>);
craftingTable.remove(<item:embers:lead_shovel>);
craftingTable.remove(<item:embers:lead_pickaxe>);
craftingTable.remove(<item:embers:lead_axe>);
craftingTable.remove(<item:embers:lead_hoe>);
craftingTable.remove(<item:embers:silver_sword>);
craftingTable.remove(<item:embers:silver_shovel>);
craftingTable.remove(<item:embers:silver_pickaxe>);
craftingTable.remove(<item:embers:silver_axe>);
craftingTable.remove(<item:embers:silver_hoe>);
craftingTable.remove(<item:embers:dawnstone_sword>);
craftingTable.remove(<item:embers:dawnstone_shovel>);
craftingTable.remove(<item:embers:dawnstone_pickaxe>);
craftingTable.remove(<item:embers:dawnstone_axe>);
craftingTable.remove(<item:embers:dawnstone_hoe>);



craftingTable.remove(<item:embers:ember_bore>);
craftingTable.addShaped("handcrafted_ember_bore", <item:embers:ember_bore>,[
  [<item:embers:caminite_bricks>,<item:embers:mechanical_core>,<item:embers:caminite_bricks>],
  [<tag:items:forge:plates/lead>,<tag:items:forge:plates/lead>,<tag:items:forge:plates/lead>]]);      

craftingTable.remove(<item:embers:mechanical_core>);
craftingTable.addShaped("handcrafted_mechanical_core", <item:embers:mechanical_core>,[
  [<item:embers:caminite_bricks>,<item:minecraft:hopper>,<item:embers:caminite_bricks>],
  [<item:createdieselgenerators:engine_piston>,<item:create:shaft>,<item:createdieselgenerators:engine_piston>],
  [<tag:items:forge:ingots/lead>,<tag:items:forge:wires/lead>,<tag:items:forge:ingots/lead>]]);      

craftingTable.remove(<item:embers:ancient_codex>);
craftingTable.addShapeless("handcrafted_ancient_codex", <item:embers:ancient_codex>, [<item:embers:caminite_plate>,<item:minecraft:book>,<item:tfc:powder/wood_ash>]);

craftingTable.remove(<item:embers:superheater>); //Use Brass Springs if an Iron free method is created - coiling machine use sterling silver
craftingTable.addShaped("handcrafted_superheater", <item:embers:superheater>,[
  [<tag:items:forge:wires/brass>,<tag:items:forge:wires/brass>,<tag:items:forge:rods/brass>],
  [<tag:items:forge:wires/brass>,<tag:items:forge:wires/brass>,<item:minecraft:air>],
  [<tag:items:forge:wires/brass>,<tag:items:forge:wires/brass>,<tag:items:forge:rods/brass>]]);    

craftingTable.remove(<item:embers:mini_boiler>);
craftingTable.addShaped("handcrafted_mini_boiler", <item:embers:mini_boiler>,[
  [<item:minecraft:air>,<tag:items:forge:plates/lead>,<item:minecraft:air>],
  [<tag:items:forge:plates/lead>,<item:immersive_aircraft:boiler>,<tag:items:forge:plates/lead>],
  [<item:minecraft:air>,<tag:items:forge:plates/lead>,<item:minecraft:air>]]);       

craftingTable.remove(<item:embers:copper_cell>);
craftingTable.addShaped("handcrafted_ember_battery_copper_cell", <item:embers:copper_cell>,[
  [<item:embers:caminite_ring>,<tag:items:forge:wires/lead>,<item:embers:caminite_ring>],
  [<tag:items:forge:wires/lead>,<item:immersiveengineering:coil_lv>,<tag:items:forge:wires/lead>],
  [<item:embers:caminite_ring>,<tag:items:forge:wires/lead>,<item:embers:caminite_ring>]]);      

craftingTable.remove(<item:embers:mixer_centrifuge>);
craftingTable.addShaped("handcrafted_ember_mixer_centrifuge", <item:embers:mixer_centrifuge>,[
  [<tag:items:forge:sheets/lead>,<item:minecraft:air>,<tag:items:forge:sheets/lead>],
  [<tag:items:forge:sheets/lead>,<item:tfc:crucible>,<tag:items:forge:sheets/lead>],
  [<item:minecraft:air>,<item:embers:mechanical_core>,<item:minecraft:air>]]);      

craftingTable.remove(<item:embers:tinker_hammer>);
craftingTable.addShaped("handcrafted_tinker_hammer", <item:embers:tinker_hammer>,[
    [<tag:items:forge:double_ingots/lead>],
    [<tag:items:forge:rods/treated_wood>]]);  