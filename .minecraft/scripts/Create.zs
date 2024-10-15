

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.removeByName("create:crafting/kinetics/basin");
craftingTable.removeByRegex("createcasing:crafting/shafts*");

craftingTable.remove(<item:steampowered:bronze_boiler>);
craftingTable.remove(<item:steampowered:bronze_burner>);
craftingTable.remove(<item:steampowered:cast_iron_boiler>);
craftingTable.remove(<item:steampowered:cast_iron_burner>);
craftingTable.remove(<item:steampowered:steel_boiler>);
craftingTable.remove(<item:steampowered:steel_burner>);

<recipetype:tfmg:polarizing>.remove(<item:tfmg:magnetic_ingot>);

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

craftingTable.remove(<item:create:deployer>);
craftingTable.addShaped("handcrafted_create_deployer", <item:create:deployer>,[
    [<item:immersiveengineering:electron_tube>],
    [<item:create:andesite_casing>],
    [<item:create:brass_hand>]]); 

craftingTable.remove(<item:createdieselgenerators:basin_lid>);
craftingTable.addShaped("handcrafted_basin_lid", <item:createdieselgenerators:basin_lid>,[
    [<item:minecraft:air>,<tag:items:forge:double_ingots/lead>,<item:minecraft:air>],
    [<item:createdeco:andesite_sheet>,<item:createdeco:andesite_sheet>,<item:createdeco:andesite_sheet>]]);    


craftingTable.remove(<item:create:brass_hand>);
<recipetype:tfc:anvil>.addJsonRecipe("anvil_create_brass_hand", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:double_ingots/brass"
  },
  "result": {
    "item": "create:brass_hand"
  },
  "tier": 2,
  "rules": [
    "bend_last",
    "bend_second_last",
    "bend_third_last"
  ]
}
);

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

craftingTable.remove(<item:create_new_age:magnetite_block>);
craftingTable.addShaped("magnetite_block", <item:create_new_age:magnetite_block>, [
    [<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>],
    [<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>],
    [<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>,<item:tfmg:magnetic_ingot>]]);
craftingTable.addShapeless("rich_magnetite", <item:tfmg:magnetic_ingot>*9, [<item:create_new_age:magnetite_block>]);
//craftingTable.addShapeless("magnetite_ingot", <item:tfmg:magnetic_ingot>, [<item:tfc:powder/magnetite>*20,<item:tfc:paddle>.reuse(),<item:tfc:ceramic/ingot_mold>.reuse()]);

<recipetype:create:compacting>.addJsonRecipe("magnetic_ingot", {
  "type": "create:compacting",
  "ingredients": [
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    }, 
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },    
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    },
    {
      "item": "tfc:powder/magnetite"
    }             
  ],
  "results": [
    {
      "item": "tfmg:magnetic_ingot"
    }
  ]
});

craftingTable.remove(<item:create_new_age:redstone_magnet>);
craftingTable.addShaped("redstone_magnet_block", <item:create_new_age:redstone_magnet>, [
    [<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>],
    [<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>],
    [<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>,<item:morered:red_alloy_ingot>]]);
craftingTable.addShapeless("red_alloy_ingot", <item:morered:red_alloy_ingot>*9, [<item:create_new_age:redstone_magnet>]);

craftingTable.remove(<item:create_new_age:layered_magnet>);
craftingTable.addShaped("layered_magnet_block", <item:create_new_age:layered_magnet>, [
    [<tag:items:forge:sheets/electrum>,<tag:items:forge:sheets/electrum>,<tag:items:forge:sheets/electrum>],
    [<tag:items:forge:sheets/stainless_steel>,<tag:items:forge:sheets/stainless_steel>,<tag:items:forge:sheets/stainless_steel>],
    [<tag:items:forge:sheets/electrum>,<tag:items:forge:sheets/electrum>,<tag:items:forge:sheets/electrum>]]);

craftingTable.remove(<item:create_new_age:fluxuated_magnetite>);
<recipetype:iceandfire:dragonforge>.addJsonRecipe("dragonforge_fluxuated_magnetite", {
  "type": "iceandfire:dragonforge",
  "dragon_type": "lightning",
  "cook_time": 1000,
  "input": {
    "item": "create_new_age:magnetite_block"
  },
  "blood": {
    "item": "iceandfire:lightning_dragon_blood"
  },
  "result": {
    "item": "create_new_age:fluxuated_magnetite"
  }
});
/*
craftingTable.remove(<item:create_new_age:netherite_magnet>);
craftingTable.addShaped("netherite_magnet", <item:create_new_age:netherite_magnet>, [
    [<item:create_dd:overcharge_alloy_sheet>,<item:create_dd:overcharge_alloy_sheet>,<item:create_dd:overcharge_alloy_sheet>],
    [<item:create_dd:overcharge_alloy_sheet>,<item:create_new_age:fluxuated_magnetite>,<item:create_dd:overcharge_alloy_sheet>],
    [<item:create_dd:overcharge_alloy_sheet>,<item:create_dd:overcharge_alloy_sheet>,<item:create_dd:overcharge_alloy_sheet>]]);
*/
craftingTable.remove(<item:createaddition:alternator>);
craftingTable.addShaped("handcrafted_alternator_dynamo", <item:createaddition:alternator>,[
    [<tag:items:forge:sheets/steel>,<item:immersiveengineering:dynamo>,<tag:items:forge:sheets/steel>],
    [<item:immersiveengineering:dynamo>,<item:immersiveengineering:capacitor_lv>,<item:immersiveengineering:dynamo>],
    [<tag:items:forge:sheets/steel>,<item:immersiveengineering:dynamo>,<tag:items:forge:sheets/steel>]]);          

craftingTable.remove(<item:createaddition:rolling_mill>);
craftingTable.addShaped("handcrafted_rolling_mill", <item:createaddition:rolling_mill>,[
    [<item:create_deco_casing:andesite_casing_slab>,<item:create:shaft>,<item:create_deco_casing:andesite_casing_slab>],
    [<item:create_deco_casing:andesite_casing_slab>,<item:create:shaft>,<item:create_deco_casing:andesite_casing_slab>],
    [<item:create:andesite_casing>,<item:create:andesite_casing>,<item:create:andesite_casing>]]);        

craftingTable.remove(<item:create:belt_connector>);
craftingTable.addShaped("handcrafted_create_belt_leather", <item:create:belt_connector>*8,
[[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>],
[<tag:items:tfc:chains>,<tag:items:tfc:chains>,<tag:items:tfc:chains>],
[<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>]]);
/*
<recipetype:createaddition:rolling>.addJsonRecipe("rolled_create_belt_rubber", {
	"type":"createaddition:rolling",
	"input": {
      	"item": "create_dd:rubber"
	},
	"result": {
		"item": "create:belt_connector",
		"count": 3
	}
});    
*/
craftingTable.remove(<item:create:shaft>);
<recipetype:create:item_application>.addJsonRecipe("item_application_shaft", {
  "type": "create:item_application",
  "ingredients": [
    {
      "tag": "tfc:axles"
    },
    {
      "item": "create:andesite_alloy"
    }
  ],
  "results": [
    {
      "item": "create:shaft"
    }
  ]
}
);


craftingTable.remove(<item:create:super_glue>);
craftingTable.addShaped("handcrafted_glue_packaging", <item:create:super_glue>,[
    [<tag:items:forge:slimeballs>,<tag:items:forge:shiny_foil>],
    [<tag:items:minecraft:wooden_buttons>,<tag:items:forge:slimeballs>]]);