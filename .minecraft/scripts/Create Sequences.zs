

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;
import mods.create.SequencedAssemblyManager;

craftingTable.remove(<item:immersive_aircraft:industrial_gears>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_industrial_gears")
  .transitionTo(<item:tfc:brass_mechanisms>)
  .require(<item:tfc:brass_mechanisms>)
  .loops(1)
  .addOutput(<item:immersive_aircraft:industrial_gears>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:copper_gear>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:tin_gear>)));

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_winding_gears")
  .transitionTo(<item:tfc:brass_mechanisms>)
  .require(<item:tfc:brass_mechanisms>)
  .loops(1)
  .addOutput(<item:embers:winding_gears>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:kubejs:magic_motion_apparatus>)));

craftingTable.remove(<item:minecraft:clock>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_minecraft_clock")
  .transitionTo(<item:create:precision_mechanism>)
  .require(<item:tfc:brass_mechanisms>)
  .loops(1)
  .addOutput(<item:minecraft:clock>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:precision_mechanism>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:observer>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:daylight_detector>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:winding_gears>)));  

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_magic_motion_apparatus")
  .transitionTo(<item:kubejs:wooden_glass_casing>)
  .require(<item:framedblocks:framed_cube>)
  .loops(1)
  .addOutput(<item:kubejs:magic_motion_apparatus>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:firmalife:reinforced_glass>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdieselgenerators:engine_piston>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:ember_crystal>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:lead_electrode>)));    

<recipetype:create:sequenced_assembly>.remove(<item:create:precision_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_precision_mechanism")
  .transitionTo(<item:create:incomplete_precision_mechanism>)
  .require(<item:tfc:brass_mechanisms>)
  .loops(1)
  .addOutput(<item:create:precision_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:supplementaries:crank>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:brass_gear>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>)));    

<recipetype:create:sequenced_assembly>.remove(<item:tfmg:steel_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_steel_mechanism")
  .transitionTo(<item:tfmg:unfinished_steel_mechanism>)
  .require(<item:firmalife:metal/sheet/stainless_steel>)
  .loops(1)
  .addOutput(<item:tfmg:steel_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:firmalife:metal/rod/stainless_steel>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:steel_gear>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>)) 
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:railcraft:steel_gear>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>))     
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:firmalife:reinforced_glass>)));            
