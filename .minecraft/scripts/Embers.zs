

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
  [<tag:items:forge:sheets/lead>,<tag:items:forge:sheets/lead>,<tag:items:forge:sheets/lead>]]);      

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
  [<item:minecraft:air>,<tag:items:forge:double_ingots/cast_iron>,<item:minecraft:air>],
  [<tag:items:forge:double_sheets/cast_iron>,<item:minecraft:air>,<tag:items:forge:double_sheets/cast_iron>],
  [<item:minecraft:air>,<tag:items:forge:double_ingots/cast_iron>,<item:minecraft:air>]]);       

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

craftingTable.remove(<item:embers:field_chart>);
craftingTable.addShaped("handcrafted_field_chart", <item:embers:field_chart>,[
  [<item:embers:archaic_edge>,<item:tfc:lens>,<item:embers:archaic_edge>],
  [<item:embers:archaic_edge>,<item:embers:ancient_motive_core>,<item:embers:archaic_edge>],
  [<item:embers:archaic_edge>,<item:embers:resonating_bell>,<item:embers:archaic_edge>]]);      

craftingTable.remove(<item:embers:resonating_bell>);
<recipetype:vintageimprovements:vibrating>.addJsonRecipe("vibrating_resonating_bell", {
	"type":"vintageimprovements:vibrating",
	"ingredients": [ 
		{
			"tag": "tfc:bells"
		}
	],
	"results": [
		{
			"item": "embers:resonating_bell",
			"count": 1
		}
	],
	"processingTime": 800
});

craftingTable.remove(<item:embers:ember_dial>);
craftingTable.addShaped("handcrafted_ember_dial", <item:embers:ember_dial>,[
  [<item:ae2:crank>],
  [<item:embers:caminite_plate>],
  [<tag:items:forge:sheets/copper>]]);    

craftingTable.remove(<item:embers:item_dial>);
craftingTable.addShaped("handcrafted_item_dial", <item:embers:item_dial>,[
  [<item:ae2:crank>],
  [<item:embers:caminite_plate>],
  [<tag:items:forge:sheets/lead>]]);  

craftingTable.remove(<item:embers:fluid_dial>);
craftingTable.addShaped("handcrafted_fluid_dial", <item:embers:fluid_dial>,[
  [<item:ae2:crank>],
  [<item:embers:caminite_plate>],
  [<tag:items:forge:sheets/cast_iron>]]);        

craftingTable.remove(<item:aetherworks:heat_dial>);
craftingTable.addShaped("handcrafted_heat_dial", <item:aetherworks:heat_dial>,[
  [<item:ae2:crank>],
  [<item:embers:caminite_plate>],
  [<tag:items:forge:sheets/bronze>]]);        

craftingTable.remove(<item:embers:clockwork_attenuator>);
craftingTable.addShaped("handcrafted_clockwork_attenuator", <item:embers:clockwork_attenuator>,[
  [<item:ae2:crank>],
  [<item:embers:caminite_plate>],
  [<tag:items:forge:sheets/chromium>]]);     

craftingTable.remove(<item:embers:atmospheric_gauge>);
craftingTable.addShaped("handcrafted_atmospheric_gauge", <item:embers:atmospheric_gauge>,[
  [<item:minecraft:air>,<item:ae2:crank>,<item:minecraft:air>],
  [<item:firmaciv:copper_bolt>,<item:embers:archaic_circuit>,<item:firmaciv:copper_bolt>],
  [<tag:items:forge:ingots/archaic_brick>,<tag:items:forge:ingots/archaic_brick>,<tag:items:forge:ingots/archaic_brick>]]);      

craftingTable.remove(<item:embers:archaic_circuit>);
craftingTable.addShaped("handcrafted_archaic_circuit", <item:embers:archaic_circuit>,[
  [<tag:items:forge:ingots/archaic_brick>,<tag:items:forge:wires/lead>,<tag:items:forge:ingots/archaic_brick>],
  [<tag:items:forge:wires/lead>,<item:embers:ancient_motive_core>,<tag:items:forge:wires/lead>],
  [<tag:items:forge:ingots/archaic_brick>,<tag:items:forge:wires/lead>,<tag:items:forge:ingots/archaic_brick>]]);       

craftingTable.remove(<item:embers:ashen_goggles>);
craftingTable.addShaped("handcrafted_ashen_goggles", <item:embers:ashen_goggles>,[
  [<item:kubejs:ashen_string>,<item:kubejs:ashen_string>,<item:kubejs:ashen_string>],
  [<tag:items:forge:plates/dawnstone>,<item:minecraft:air>,<tag:items:forge:plates/dawnstone>],
  [<item:tfc:lens>,<item:embers:archaic_circuit>,<item:tfc:lens>]]);       



craftingTable.remove(<item:embers:item_pipe>);
craftingTable.addShaped("handcrafted_item_pipe", <item:embers:item_pipe>*16,[
  [<item:minecraft:air>,<tag:items:forge:sheets/lead>,<item:minecraft:air>],
  [<tag:items:forge:sheets/lead>,<item:minecraft:air>,<tag:items:forge:sheets/lead>],
  [<item:minecraft:air>,<tag:items:forge:sheets/lead>,<item:minecraft:air>]]);    

craftingTable.remove(<item:embers:fluid_pipe>);
craftingTable.addShaped("handcrafted_fluid_pipe", <item:embers:fluid_pipe>*16,[
  [<item:minecraft:air>,<tag:items:forge:sheets/cast_iron>,<item:minecraft:air>],
  [<tag:items:forge:sheets/cast_iron>,<item:minecraft:air>,<tag:items:forge:sheets/cast_iron>],
  [<item:minecraft:air>,<tag:items:forge:sheets/cast_iron>,<item:minecraft:air>]]);    

craftingTable.remove(<item:embers:melter>);
craftingTable.addShaped("handcrafted_embers_melter", <item:embers:melter>,[
  [<item:minecraft:air>,<item:tfc:crucible>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:embers:caminite_ring>,<item:minecraft:air>],
  [<tag:items:forge:sheets/cast_iron>,<item:embers:superheater>,<tag:items:forge:sheets/cast_iron>]]);    

craftingTable.remove(<item:embers:geologic_separator>);
craftingTable.addShaped("handcrafted_geologic_separator", <item:embers:geologic_separator>,[
  [<item:embers:fluid_pipe>,<item:tfc:metal/double_sheet/cast_iron>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:embers:caminite_ring>,<item:minecraft:air>]]);    

craftingTable.remove(<item:embers:stamper>);
craftingTable.addShaped("handcrafted_embers_stamper", <item:embers:stamper>,[
  [<tag:items:forge:storage_blocks/copper>],
  [<item:embers:caminite_ring>],
  [<tag:items:forge:double_ingots/lead>]]);  

craftingTable.remove(<item:embers:stamp_base>);
craftingTable.addShaped("handcrafted_embers_stamp_base", <item:embers:stamp_base>,[
  [<item:tfcchannelcasting:mold_table>],
  [<item:embers:caminite_ring>],
  [<tag:items:forge:double_ingots/lead>]]);  

craftingTable.remove(<item:embers:fluid_vessel>);
craftingTable.addShaped("handcrafted_embers_fluid_vessel", <item:embers:fluid_vessel>,[
  [<tag:items:forge:double_sheets/cast_iron>],
  [<item:aetherworks:prism_support>],
  [<item:embers:caminite_valve>]]); 

craftingTable.remove(<item:embers:bin>);
craftingTable.addShaped("handcrafted_basin_bin", <item:embers:bin>,[
  [<tag:items:forge:sheets/lead>,<item:minecraft:air>,<tag:items:forge:sheets/lead>],
  [<tag:items:forge:sheets/lead>,<tag:items:forge:sheets/lead>,<tag:items:forge:sheets/lead>]]);  

craftingTable.remove(<item:embers:ember_activator>);
craftingTable.addShaped("handcrafted_ember_activator", <item:embers:ember_activator>,[
  [<item:minecraft:air>,<item:tfc:metal/bars/copper>,<item:minecraft:air>],
  [<tag:items:forge:sheets/lead>,<item:embers:caminite_plate>,<tag:items:forge:sheets/lead>],
  [<item:embers:item_pipe>,<item:embers:caminite_ring>,<item:embers:item_pipe>]]);    

craftingTable.remove(<item:embers:ember_emitter>);
craftingTable.addShaped("handcrafted_ember_emitter", <item:embers:ember_emitter>,[
  [<item:minecraft:air>,<item:firmaciv:copper_bolt>,<item:minecraft:air>],
  [<item:embers:caminite_plate>,<tag:items:forge:sheets/lead>,<item:embers:caminite_plate>],
  [<item:embers:caminite_plate>,<item:tfc:metal/sheet/copper>,<item:embers:caminite_plate>]]);  

craftingTable.remove(<item:embers:ember_receiver>);
craftingTable.addShaped("handcrafted_ember_receiver", <item:embers:ember_receiver>,[
  [<tag:items:forge:rods/lead>,<item:firmaciv:copper_bolt>,<tag:items:forge:rods/lead>],
  [<item:embers:caminite_plate>,<tag:items:forge:sheets/lead>,<item:embers:caminite_plate>]]);  

craftingTable.remove(<item:embers:pressure_refinery>);
craftingTable.addShaped("handcrafted_pressure_refinery", <item:embers:pressure_refinery>,[
  [<tag:items:forge:ingots/caminite_brick>,<item:tfc:metal/bars/copper>,<tag:items:forge:ingots/caminite_brick>],
  [<tag:items:forge:sheets/lead>,<item:minecraft:air>,<tag:items:forge:sheets/lead>],
  [<item:embers:item_pipe>,<tag:items:forge:storage_blocks/copper>,<item:embers:item_pipe>]]);  

craftingTable.remove(<item:embers:ember_ejector>);
craftingTable.addShaped("handcrafted_ember_ejector", <item:embers:ember_ejector>,[
  [<item:minecraft:air>,<item:embers:ember_emitter>,<item:minecraft:air>],
  [<tag:items:forge:rods/lead>,<item:embers:dawnstone_ingot>,<tag:items:forge:rods/lead>],
  [<item:minecraft:air>,<item:embers:caminite_ring>,<item:minecraft:air>]]);    

craftingTable.remove(<item:embers:heat_exchanger>);
craftingTable.addShaped("handcrafted_heat_exchanger", <item:embers:heat_exchanger>,[
  [<tag:items:forge:rods/brass>,<item:vintageimprovements:brass_spring>,<item:embers:superheater>],
  [<item:minecraft:air>,<tag:items:forge:sheets/lead>,<item:embers:superheater>],
  [<tag:items:forge:rods/brass>,<item:vintageimprovements:brass_spring>,<item:embers:superheater>]]);    

craftingTable.remove(<item:embers:mechanical_pump>);
craftingTable.addShaped("handcrafted_mechanical_pump", <item:embers:mechanical_pump>,[
  [<item:minecraft:air>,<item:kubejs:magic_motion_apparatus>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:embers:mechanical_core>,<item:minecraft:air>],
  [<item:embers:fluid_pipe>,<item:createdieselgenerators:engine_piston>,<item:embers:fluid_pipe>]]);    

craftingTable.addShapeless("handcrafted_ashen_string", <item:kubejs:ashen_string>, [<tag:items:forge:string>,<tag:items:forge:dusts/ash>]);    

craftingTable.remove(<item:embers:glimmer_lamp>);

craftingTable.addShapeless("iron_sword_repair", <item:embers:glimmer_lamp>, 
[<item:embers:glimmer_crystal>.anyDamage(),<item:tfc:metal/lamp/wrought_iron>],
(usualOut as IItemStack, inputs as IItemStack[]) => {
	var newDamage = inputs[0].damage;
    	return usualOut.withDamage(newDamage);
});

<recipetype:embers:alchemy>.remove(<item:embers:ashen_fabric>);
<recipetype:tfc:loom>.addJsonRecipe("ashen_string", {
    "type": "tfc:loom",
    "ingredient": {
       "ingredient": {
           "item": "kubejs:ashen_string"
        },
        "count": 8
    },
    "result": {
        "item": "embers:ashen_fabric",
        "count": 1
    },
    "steps_required": 8,
    "in_progress_texture": "embers:block/ashen_stone"
});