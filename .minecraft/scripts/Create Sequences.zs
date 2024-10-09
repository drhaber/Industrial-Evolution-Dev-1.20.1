

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

<recipetype:create:sequenced_assembly>.remove(<item:create_dd:integrated_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_integrated_mechanism")
  .transitionTo(<item:create_dd:incomplete_integrated_mechanism>)
  .require(<item:tfc:brass_mechanisms>)
  .loops(1)
  .addOutput(<item:create_dd:integrated_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_dd:integrated_circuit>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersive_aircraft:industrial_gears>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:precision_mechanism>)));    

<recipetype:create:sequenced_assembly>.remove(<item:create_dd:calculation_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_calculation_mechanism")
  .transitionTo(<item:create_dd:incomplete_calculation_mechanism>)
  .require(<item:createdeco:andesite_sheet>)
  .loops(1)
  .addOutput(<item:create_dd:calculation_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:ae2:printed_calculation_processor>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:precision_mechanism>)));      

<recipetype:create:sequenced_assembly>.remove(<item:create_dd:inductive_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_logistics_mechanism")
  .transitionTo(<item:create_dd:incomplete_inductive_mechanism>)
  .require(<item:createdeco:andesite_sheet>)
  .loops(2)
  .addOutput(<item:create_dd:inductive_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:lever>)));  

<recipetype:create:sequenced_assembly>.remove(<item:create_dd:infernal_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_infernal_mechanism")
  .transitionTo(<item:create_dd:incomplete_infernal_mechanism>)
  .require(<item:tfc:metal/sheet/cast_iron>)
  .loops(1)
  .addOutput(<item:create_dd:infernal_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:archaic_brick>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:winding_gears>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:ancient_motive_core>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:winding_gears>)));      

<recipetype:create:sequenced_assembly>.remove(<item:create_dd:sealed_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_sealed_mechanism")
  .transitionTo(<item:create_dd:incomplete_sealed_mechanism>)
  .require(<item:create_dd:rubber>)
  .loops(1)
  .addOutput(<item:create_dd:sealed_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:firmaciv:copper_bolt>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:medium_filling_tank>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:analog_lever>))  
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

<recipetype:create:sequenced_assembly>.remove(<item:create_things_and_misc:vibration_mechanism>);
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_vibration_mechanism")
  .transitionTo(<item:create_things_and_misc:incomplete_vibration_mechanism>)
  .require(<item:create_dd:lapis_lazuli_shard>)
  .loops(1)
  .addOutput(<item:create_things_and_misc:vibration_mechanism>,1)
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_things_and_misc:rose_quartz_sheet>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_dd:infernal_mechanism>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:resonating_bell>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>))  
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:embers:resonating_bell>))
  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:electron_tube>)));       