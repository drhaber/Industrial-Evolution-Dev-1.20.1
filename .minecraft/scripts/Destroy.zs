

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:destroy:double_cardan_shaft>);
craftingTable.addShaped("handcrafted_double_cardan_shaft", <item:destroy:double_cardan_shaft>,[
  [<tag:items:forge:metal/chain>,<item:create:shaft>],
  [<item:create:shaft>,<item:minecraft:air>]]);      

<recipetype:create:filling>.addJsonRecipe("destroy_hydrochloric_acid_conversion", {
    "type": "create:filling",
    "ingredients": [
      {
        "item": "minecraft:bucket"
      },
      {
        "mixtureFluidWithMolecule": "destroy:mixture",
        "amount": 1000,
        "molecule": "destroy:hydrochloric_acid",
        "concentration": 40.9
      }
    ],
    "results": [
      {
        "item": "kubejs:hydrochloric_acid_bucket"
      }
    ]
  });    
<recipetype:create:emptying>.addJsonRecipe("conversion_destroy_hydrochloric_acid", {
    "type": "create:emptying",
    "ingredients": [
      {
        "item": "kubejs:hydrochloric_acid_bucket"
      }
    ],
    "results": [
      {
        "item": "minecraft:bucket"
      },
      {
        "fluid": "destroy:mixture",
        "amount": 1000,
        "nbt": {
            "Mixture": {
                "TranslationKey": "Hydrochloric Acid",
                "Temperature": 289,
                "Contents": [
                    {
                        "Molecule": "destroy:hydrochloric_acid",
                        "Concentration": 40.9
                    }
                ]
            } 
        }
      }
    ]
  });


  //<fluid:kubejs:hydrochloric_acid> * 1000
  //<fluid:destroy:mixture>.withTag({Mixture: {Temperature: 298.0, Contents: [{Molecule: "destroy:hydrochloric_acid", Concentration: 40.866703, Gaseous: 1.0}], AtEquilibrium: 0}}) * 200