import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.recipe.MirrorAxis;
import mods.jeitweaker.Jei;

craftingTable.removeByInput(<item:immersiveengineering:hammer>);

<recipetype:immersiveengineering:blueprint>.remove(<item:immersiveengineering:electron_tube>);
craftingTable.addShaped("handcrafted_electron_tube", <item:immersiveengineering:electron_tube>, [
    [<item:minecraft:air>,<item:kubejs:casing_electron_tube>,<item:minecraft:air>],
    [<item:railcraft:zinc_electrode>,<item:tfc:metal/sheet/gold>,<item:railcraft:nickel_electrode>],
    [<item:immersiveengineering:wire_copper>,<item:kubejs:ceramic_insulator>,<item:immersiveengineering:wire_copper>]]);

craftingTable.remove(<item:immersiveengineering:cloche>);
craftingTable.addShaped("handcrafted_cloche", <item:immersiveengineering:cloche>,[
    [<tag:items:forge:glass_panes/colorless>,<tag:items:forge:light_bulbs>,<tag:items:forge:glass_panes/colorless>],
    [<tag:items:forge:glass_panes/colorless>,<item:firmalife:large_planter>,<tag:items:forge:glass_panes/colorless>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:immersiveengineering:component_electronic_adv>,<item:tfc_ie_addon:treated_wood_lumber>]]);

craftingTable.remove(<item:immersiveengineering:component_electronic_adv>);
craftingTable.addShaped("handcrafted_component_electronic_adv", <item:immersiveengineering:component_electronic_adv>,[
    [<item:immersiveengineering:electron_tube>,<item:minecraft:air>,<item:immersiveengineering:electron_tube>],
    [<item:immersiveengineering:plate_duroplast>,<item:immersiveengineering:plate_duroplast>,<item:immersiveengineering:plate_duroplast>],
    [<item:immersiveengineering:wire_electrum>,<item:minecraft:air>,<item:immersiveengineering:wire_lead>]]);

craftingTable.remove(<item:immersiveengineering:light_bulb>);
craftingTable.addShaped("handcrafted_incandescent_light_bulb", <item:immersiveengineering:light_bulb>,[
    [<item:minecraft:air>,<tag:items:tfc:glass_bottles>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:kubejs:ashen_string>,<item:minecraft:air>],
    [<tag:items:forge:shiny_foil>,<item:minecraft:air>,<tag:items:forge:wires/copper>]]);

craftingTable.remove(<item:immersiveengineering:coil_lv>);
craftingTable.addShaped("handcrafted_coil_copper", <item:immersiveengineering:coil_lv>*4,[
    [<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>),<tag:items:tfc:magnetic_rocks>,<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_copper>.transformReplace(<item:kubejs:emptyspool>)]]);

craftingTable.removeByName("immersiveengineering:crafting/wirecoil_copper");
craftingTable.addShaped("handcrafted_copper_spool", <item:immersiveengineering:wirecoil_copper>,[
    [<tag:items:forge:wires/copper>,<tag:items:forge:wires/copper>,<tag:items:forge:wires/copper>],
    [<tag:items:forge:wires/copper>,<item:kubejs:emptyspool>,<tag:items:forge:wires/copper>],
    [<tag:items:forge:wires/copper>,<tag:items:forge:wires/copper>,<tag:items:forge:wires/copper>]]);

craftingTable.remove(<item:immersiveengineering:coil_mv>);
craftingTable.addShaped("handcrafted_coil_electrum", <item:immersiveengineering:coil_mv>,[
    [<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>),<tag:items:forge:magnetic/rods>,<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_electrum>.transformReplace(<item:kubejs:emptyspool>)]]);

craftingTable.removeByName("immersiveengineering:crafting/wirecoil_electrum");
craftingTable.addShaped("handcrafted_electrum_spool", <item:immersiveengineering:wirecoil_electrum>,[
    [<tag:items:forge:wires/electrum>,<tag:items:forge:wires/electrum>,<tag:items:forge:wires/electrum>],
    [<tag:items:forge:wires/electrum>,<item:kubejs:emptyspool>,<tag:items:forge:wires/electrum>],
    [<tag:items:forge:wires/electrum>,<tag:items:forge:wires/electrum>,<tag:items:forge:wires/electrum>]]);

craftingTable.remove(<item:immersiveengineering:coil_hv>);
craftingTable.addShaped("handcrafted_coil_steel", <item:immersiveengineering:coil_hv>,[
    [<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>),<tag:items:forge:magnetic/rods>,<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>)],
    [<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>),<item:immersiveengineering:wirecoil_steel>.transformReplace(<item:kubejs:emptyspool>)]]);

craftingTable.removeByName("immersiveengineering:crafting/wirecoil_steel");
craftingTable.addShaped("handcrafted_steel_spool", <item:immersiveengineering:wirecoil_steel>,[
    [<tag:items:forge:wires/steel>,<tag:items:forge:wires/steel>,<tag:items:forge:wires/steel>],
    [<tag:items:forge:wires/steel>,<item:kubejs:emptyspool>,<tag:items:forge:wires/steel>],
    [<tag:items:forge:wires/steel>,<tag:items:forge:wires/steel>,<tag:items:forge:wires/steel>]]);

craftingTable.remove(<item:immersiveengineering:wirecoil_structure_rope>);
craftingTable.addShaped("handcrafted_hemp_decor_spool", <item:immersiveengineering:wirecoil_structure_rope>,[
    [<item:minecraft:air>,<tag:items:forge:fiber_hemp>,<item:minecraft:air>],
    [<tag:items:forge:fiber_hemp>,<item:kubejs:emptyspool>,<tag:items:forge:fiber_hemp>],
    [<item:minecraft:air>,<tag:items:forge:fiber_hemp>,<item:minecraft:air>]]);  

craftingTable.remove(<item:immersiveengineering:wirecoil_structure_steel>);
craftingTable.addShaped("handcrafted_steel_decor_spool", <item:immersiveengineering:wirecoil_structure_steel>,[
    [<item:minecraft:air>,<tag:items:forge:wires/steel>,<item:minecraft:air>],
    [<tag:items:forge:wires/steel>,<item:kubejs:emptyspool>,<tag:items:forge:wires/steel>],
    [<item:minecraft:air>,<tag:items:forge:wires/steel>,<item:minecraft:air>]]);  

craftingTable.remove(<item:immersiveengineering:watermill>);
craftingTable.remove(<item:immersiveengineering:waterwheel_segment>);
craftingTable.addShaped("handcrafted_watermill", <item:immersiveengineering:watermill>,[
    [<item:tfc_ie_addon:treated_wood_lumber>,<tag:items:forge:treated_wood>,<item:tfc_ie_addon:treated_wood_lumber>],
    [<tag:items:forge:treated_wood>,<item:immersiveengineering:treated_fence>,<tag:items:forge:treated_wood>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<tag:items:forge:treated_wood>,<item:tfc_ie_addon:treated_wood_lumber>]]); 

craftingTable.remove(<item:immersiveengineering:windmill_blade>);
craftingTable.addShaped("handcrafted_windmill_blade", <item:immersiveengineering:windmill_blade>,[
    [<item:immersiveengineering:stick_treated>,<item:immersiveengineering:stick_treated>,<item:immersiveengineering:stick_treated>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>,<item:minecraft:air>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>,<item:minecraft:air>]]);  

craftingTable.remove(<item:immersiveengineering:windmill>);
craftingTable.addShaped("handcrafted_windmill", <item:immersiveengineering:windmill>,[
    [<item:immersiveengineering:windmill_blade>,<item:immersiveengineering:windmill_blade>,<item:immersiveengineering:windmill_blade>],
    [<item:immersiveengineering:windmill_blade>,<item:immersiveengineering:treated_fence>,<item:immersiveengineering:windmill_blade>],
    [<item:immersiveengineering:windmill_blade>,<item:immersiveengineering:windmill_blade>,<item:immersiveengineering:windmill_blade>]]);  

craftingTable.remove(<item:immersiveengineering:dynamo>);
craftingTable.addShaped("handcrafted_dynamo", <item:immersiveengineering:dynamo>,[
    [<tag:items:forge:sheets/cast_iron>,<item:create_new_age:magnetite_block>,<tag:items:forge:sheets/cast_iron>],
    [<item:railcraft:charge_terminal>,<item:create_new_age:generator_coil>,<item:immersiveengineering:treated_fence>],
    [<tag:items:forge:sheets/cast_iron>,<item:create_new_age:magnetite_block>,<tag:items:forge:sheets/cast_iron>]]);      

 
craftingTable.remove(<item:immersiveengineering:hemp_fabric>);
craftingTable.addShaped("handcrafted_hemp_fabric", <item:immersiveengineering:hemp_fabric>,[
    [<tag:items:forge:fiber_hemp>,<tag:items:forge:fiber_hemp>,<tag:items:forge:fiber_hemp>],
    [<tag:items:forge:fiber_hemp>,<item:kubejs:emptyspool>,<tag:items:forge:fiber_hemp>],
    [<tag:items:forge:fiber_hemp>,<tag:items:forge:fiber_hemp>,<tag:items:forge:fiber_hemp>]]);  

craftingTable.remove(<item:immersiveengineering:furnace_heater>);
craftingTable.addShaped("handcrafted_external_heater", <item:immersiveengineering:furnace_heater>,[
    [<tag:items:forge:wires/brass>,<tag:items:forge:wires/brass>,<tag:items:forge:wires/brass>],
    [<item:embers:superheater>,<item:immersiveengineering:coil_lv>,<item:embers:superheater>],
    [<item:create:andesite_alloy>,<item:create:andesite_alloy>,<item:create:andesite_alloy>]]);      


craftingTable.remove(<item:immersiveengineering:connector_lv_relay>);
craftingTable.addShaped("handcrafted_connector_lv_relay", <item:immersiveengineering:connector_lv_relay>, [
    [<item:firmaciv:copper_bolt>],
    [<tag:items:minecraft:terracotta>]]);

craftingTable.remove(<item:immersiveengineering:connector_lv>);
craftingTable.addShaped("handcrafted_connector_lv", <item:immersiveengineering:connector_lv>, [
    [<item:firmaciv:copper_bolt>],
    [<item:kubejs:ceramic_insulator>]]);

craftingTable.remove(<item:immersiveengineering:wire_copper>);
<recipetype:createaddition:rolling>.remove(<item:immersiveengineering:wire_copper>);
<recipetype:createaddition:rolling>.addJsonRecipe("rolled_create_wire_copper", {
	"type":"createaddition:rolling",
	"input": {
      	"tag": "forge:rods/copper"
	},
	"result": {
		"item": "immersiveengineering:wire_copper",
		"count": 3
	}
});        

<recipetype:tfc:anvil>.remove(<item:tfc_ie_addon:tool_head/ie_hammer>);
<recipetype:tfc:anvil>.addJsonRecipe("anvil_tool_head_ie_hammer", {
  "type": "tfc:anvil",
  "input": {
    "item": "tfc_ie_addon:metal/double_ingot/lead"
  },
  "result": {
    "item": "tfc_ie_addon:tool_head/ie_hammer"
  },
  "tier": 2,
  "rules": [
    "upset_any",
    "hit_not_last",
    "draw_second_last"
  ]
});

craftingTable.remove(<item:immersiveengineering:cokebrick>);
craftingTable.addShaped("handcrafted_cokebrick",<item:immersiveengineering:cokebrick>, [
    [<tag:items:forge:clay>,<tag:items:forge:dusts/ash>,<tag:items:forge:clay>],
    [<tag:items:forge:dusts/ash>,<tag:items:engineersdecor:brick_blocks>,<tag:items:forge:dusts/ash>],
    [<tag:items:forge:clay>,<tag:items:forge:dusts/ash>,<tag:items:forge:clay>]]);



craftingTable.remove(<item:immersiveengineering:capacitor_lv>);
craftingTable.addShaped("handcrafted_capacitor_lv",<item:immersiveengineering:capacitor_lv>, [
    [<tag:items:forge:rods/lead>,<item:railcraft:charge_terminal>,<tag:items:forge:rods/lead>],
    [<item:railcraft:lead_electrode>,<item:tfmg:bottle_of_battery_acid>,<item:railcraft:lead_electrode>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>]]);

craftingTable.remove(<item:immersiveengineering:capacitor_mv>);
craftingTable.addShapedMirrored("handcrafted_capacitor_mv", MirrorAxis.HORIZONTAL,<item:immersiveengineering:capacitor_mv>, [
    [<tag:items:forge:rods/constantan>,<item:railcraft:charge_terminal>,<tag:items:forge:rods/constantan>],
    [<item:railcraft:nickel_electrode>,<item:tfmg:bottle_of_battery_acid>,<item:railcraft:iron_electrode>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>]]);

craftingTable.remove(<item:immersiveengineering:capacitor_hv>);
craftingTable.addShapedMirrored("handcrafted_capacitor_hv", MirrorAxis.HORIZONTAL,<item:immersiveengineering:capacitor_hv>, [
    [<tag:items:forge:rods/electrum>,<item:railcraft:charge_terminal>,<tag:items:forge:rods/electrum>],
    [<item:railcraft:invar_electrode>,<item:tfmg:lithium_charge>,<item:railcraft:carbon_electrode>],
    [<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>,<item:tfc_ie_addon:treated_wood_lumber>]]); 
    