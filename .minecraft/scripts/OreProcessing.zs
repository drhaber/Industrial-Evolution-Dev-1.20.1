

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;

<recipetype:embers:stamping>.removeAll();
<recipetype:immersiveengineering:alloy>.removeAll();

//Ingots
var tfcMetals = ["bismuth","bismuth_bronze","black_bronze","black_steel","blue_steel","brass","bronze","cast_iron","copper","gold","high_carbon_black_steel","high_carbon_blue_steel","high_carbon_red_steel","high_carbon_steel","nickel","pig_iron","red_steel","rose_gold","silver","steel","sterling_silver","tin","unknown","weak_blue_steel","weak_red_steel","weak_steel","wrought_iron","zinc"];
for metal in tfcMetals{   
<recipetype:embers:stamping>.addJsonRecipe("embers_Stamp_" + metal + "ingot", {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 100,
     "name": ("tfc:metal/"+ metal ) as string
    },
  "output": (<item:tfc:metal/ingot/${metal}> as IData),
  "stamp": (<item:tfc:ceramic/fire_ingot_mold> as IData)
}
);

}

//TFC Tools
var tfcTools = ["axe_head","chisel_head","hammer_head","hoe_head","javelin_head","knife_blade","mace_head","pickaxe_head","propick_head","saw_blade","scythe_blade","shovel_head","sword_blade"];
for toolhead in tfcTools{   
    var tfcToolMetals = ["bismuth_bronze","black_bronze","bronze","copper"];
    for ToolMetal in tfcToolMetals{
    <recipetype:embers:stamping>.addJsonRecipe("embers_Stamp_" + ToolMetal + toolhead, {
      "type": "embers:stamping",
        "fluid": {
         "amount" : 100,
         "name": ("tfc:metal/"+ ToolMetal ) as string
        },
      "output": (<item:tfc:metal/${toolhead}/${ToolMetal}> as IData),
      "stamp": (<item:tfc:ceramic/${toolhead}_mold> as IData)
}
);
}}

function addEmbersStamping(fluidIn as IFluidStack, itemOut as IItemStack, itemStamp as IItemStack) as void { 
<recipetype:embers:stamping>.addJsonRecipe("embers_IngotStamp_" + itemOut.descriptionId + itemStamp.descriptionId, {
  "type": "embers:stamping",
    "fluid": {
     "amount" : 100,
     "name": fluidIn.fluid.registryName as string
    },
  "output": (itemOut as IData),
  "stamp": (itemStamp as IData)
}
);
}

//bell_mold
addEmbersStamping(<fluid:tfc:metal/gold>,<item:minecraft:bell>,<item:tfc:ceramic/bell_mold>);
addEmbersStamping(<fluid:tfc:metal/bronze>,<item:tfc:bronze_bell>,<item:tfc:ceramic/bell_mold>);
addEmbersStamping(<fluid:tfc:metal/brass>,<item:tfc:brass_bell>,<item:tfc:ceramic/bell_mold>);

print((<item:tfc:ore/small_native_copper> as IData).getAsString());

function addCreateOrecrushing(ItemIn as string, itemOut as string) as void { 
<recipetype:create:crushing>.addJsonRecipe("create_ore_Crush_" + itemOut, {
    "type": "create:crushing",
    "ingredients": [
    	{
    		"item": ItemIn
    	}
    ],
	"results": [
		{
			"item": itemOut,
			"count": 2
		}
	],
	"processingTime": 300
}
);
}

var Ores = ["native_copper","native_gold","hematite","native_silver","cassiterite","bismuthinite","garnierite","malachite","magnetite","limonite","sphalerite","tetrahedrite"];
for ore in Ores{
addCreateOrecrushing("tfc:ore/poor_" + ore,"tfc:ore/small_" + ore);
addCreateOrecrushing("tfc:ore/normal_" + ore,"tfc:ore/poor_" + ore);
addCreateOrecrushing("tfc:ore/rich_" + ore,"tfc:ore/normal_" + ore);
}

function addEmbersmelting(fluidOut as string, ItemIn as string) as void { 
<recipetype:embers:melting>.addJsonRecipe("embers_ore_Crush_" + ItemIn + fluidOut, {
  "type": "embers:melting",
  "input": {
    "item": ItemIn
  },
  "output": {
    "amount": 10,
    "fluid": fluidOut
  }
}
);
}
addEmbersmelting("tfc:metal/copper","tfc:ore/small_native_copper");
addEmbersmelting("tfc:metal/gold","tfc:ore/small_native_gold");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_hematite");
addEmbersmelting("tfc:metal/silver","tfc:ore/small_native_silver");
addEmbersmelting("tfc:metal/tin","tfc:ore/small_cassiterite");
addEmbersmelting("tfc:metal/bismuth","tfc:ore/small_bismuthinite");
addEmbersmelting("tfc:metal/nickel","tfc:ore/small_garnierite");
addEmbersmelting("tfc:metal/copper","tfc:ore/small_malachite");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_magnetite");
addEmbersmelting("tfc:metal/cast_iron","tfc:ore/small_limonite");
addEmbersmelting("tfc:metal/zinc","tfc:ore/small_sphalerite");
addEmbersmelting("tfc:metal/copper","tfc:ore/small_tetrahedrite");


//lead
addCreateOrecrushing("tfc_ie_addon:ore/poor_galena","tfc_ie_addon:ore/small_galena");
addCreateOrecrushing("tfc_ie_addon:ore/normal_galena","tfc_ie_addon:ore/poor_galena");
addCreateOrecrushing("tfc_ie_addon:ore/rich_galena","tfc_ie_addon:ore/normal_galena");
addEmbersmelting("tfc_ie_addon:metal/lead","tfc_ie_addon:ore/small_galena");
addEmbersStamping(<fluid:tfc_ie_addon:metal/lead>,<item:immersiveengineering:ingot_lead>,<item:tfc:ceramic/fire_ingot_mold>);

function addEmbers2Mixing(fluidOut as string, fluidIn1 as string, qty1 as int, fluidIn2 as string, qty2 as int) as void { 
<recipetype:embers:mixing>.addJsonRecipe("embers_mix2"+ fluidOut, {
  "type": "embers:mixing",
  "inputs": [
    {
      "amount": qty1,
      "name": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "name": ("tfc:metal/"+ fluidIn2 ) as string
    }
  ],
  "output": {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
  }
}
);
}

function addEmbers3Mixing(fluidOut as string, fluidIn1 as string, qty1 as int, fluidIn2 as string, qty2 as int, fluidIn3 as string, qty3 as int) as void { 
<recipetype:embers:mixing>.addJsonRecipe("embers_mix3"+ fluidOut, {
  "type": "embers:mixing",
  "inputs": [
    {
      "amount": qty1,
      "name": ("tfc:metal/"+ fluidIn1 ) as string
    },
    {
      "amount": qty2,
      "name": ("tfc:metal/"+ fluidIn2 ) as string
    },
    {
      "amount": qty3,
      "name": ("tfc:metal/"+ fluidIn3 ) as string
    }
  ],
  "output": {
    "amount": 10,
    "fluid": ("tfc:metal/"+ fluidOut ) as string
  }
}
);
}

addEmbers2Mixing("brass", "zinc", 1,"copper", 9);
addEmbers2Mixing("bronze", "tin", 1,"copper", 9);
addEmbers2Mixing("rose_gold", "copper", 2,"gold", 8);
addEmbers2Mixing("sterling_silver", "copper", 3,"silver", 7);

addEmbers3Mixing("bismuth_bronze", "bismuth", 1,"zinc", 3,"copper", 6);
addEmbers3Mixing("black_bronze", "gold", 2,"silver", 2,"copper", 6);

<recipetype:aether:enchanting>.addJsonRecipe("iron_purify", {
  "type": "aether:enchanting",
  "category": "enchanting_blocks",
  "cookingtime": 250,
  "experience": 0.1,
  "ingredient": {
    "item": "tfc:metal/ingot/wrought_iron"
  },
  "result": "minecraft:iron_ingot"
}
);




/*




mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/black_bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/bismuth_bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);

moretweaker.railcraft.RockCrusher.removeAll();

//Removals
    //Gears from Embers
    val StampedGears = [<mysticalmechanics:gear_iron>,<mysticalmechanics:gear_gold>,<mystgears:gear_lead>,<mystgears:gear_copper>,
    <mystgears:gear_tin>,<mystgears:gear_bronze>,<mystgears:gear_nickel>,<mystgears:gear_silver>,<mystgears:gear_electrum>,
    <mystgears:gear_aluminium>,<mystgears:gear_antimony>] as IItemStack[];
    for i, SG in StampedGears{
    mods.embers.Stamper.remove(SG);
    }
/*

    val EmbersPlates =[<embers:plate_copper>,<embers:plate_lead>,<embers:plate_silver>,<embers:plate_dawnstone>,
    <embers:plate_iron>,<embers:plate_gold>,<embers:plate_aluminum>,<embers:plate_bronze>,<embers:plate_electrum>,
    <embers:plate_nickel>,<embers:plate_tin>] as IItemStack[];
    for EP in EmbersPlates{
    mods.embers.Stamper.remove(EP);
    recipes.remove(EP);
    }
mods.embers.Stamper.remove(<embers:nugget_dawnstone>);
mods.embers.Stamper.remove(<embers:ingot_dawnstone>);

//Thorium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);
//Magnesium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
#Grinder.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 4);
//Lithium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:6>, <tfc:ore/spodumene>, 2048);

mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);

//Pitch Blend
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/pitchblende>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);

//Adding Metals
#<tfcmetal:Gravitite>


val AlloyedIngots = [<tfc:metal/ingot/bronze>,<immersiveengineering:metal:6>,<immersiveengineering:metal:7>,<railcraft:ingot:7>,<forestry:ingot_bronze>,<railcraft:ingot:9>,<projectred-core:resource_item:103>
] as IItemStack[];
for AI in AlloyedIngots{
mods.immersiveengineering.AlloySmelter.removeRecipe(AI);
}

val MelteroreInputs = [<ore:oreIron>,<ore:oreGold>,<ore:oreSilver>,<ore:oreCopper>,<ore:oreLead>,<ore:oreAluminum>,<ore:oreNickel>,<ore:oreTin>] as IOreDictEntry[];
for i, MOI in MelteroreInputs{
    for OIS in MOI.items{ 
mods.embers.Melter.remove(OIS);
    }
}

#=============================================================================================================================================		

#=============================================================================================================================================		
//Extras
#mods.embers.Stamper.add(IItemStack <output>,ILiquidStack <liquid>,IIngredient <stamp>,IIngredient <input>);
//AE2 Inscriber Plates
mods.embers.Stamper.add(<appliedenergistics2:material:14>,<liquid:iron>*576,<contenttweaker:fired_material_engineering_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:13>,<liquid:iron>*576,<contenttweaker:fired_material_calculation_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:15>,<liquid:iron>*576,<contenttweaker:fired_material_logic_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:19>,<liquid:iron>*576,<contenttweaker:fired_material_silicon_press>,null);

//Liquid Catalyst
#mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);

//Illumar
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val Illumar = <projectred-core:resource_item>.definition;
for i in 0 to 16{
recipes.remove(Illumar.makeStack(i+500));
mods.tconstruct.Casting.addTableRecipe(Illumar.makeStack(i+500), dyes[i], <liquid:glowstone>, 250, true, 180);
mods.embers.Stamper.add(Illumar.makeStack(i+500),<liquid:glowstone>*250,<embers:stamp_flat>,dyes[i]);
}

//Shard
mods.embers.Melter.add(<liquid:glass>*250,<ore:shardGlass>);
//Crystals
val ReducedDyes = [<ore:dyeWhite>,<ore:dyeRed>,<ore:dyeOrange>,<ore:dyeYellow>,<ore:dyeGreen>,<ore:dyeLightBlue>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeBlack>] as IOreDictEntry[];
val crystalBlocks = <quark:crystal>.definition;
for i in 0 to 9{
mods.tconstruct.Casting.addBasinRecipe(crystalBlocks.makeStack(i), ReducedDyes[i], <liquid:quartz>, 125, true, 180);
mods.embers.Stamper.add(crystalBlocks.makeStack(i),<liquid:quartz>*125,<tfctech:ceramics/mold/glass_block>,ReducedDyes[i]);
<ore:crystalBlock>.add(crystalBlocks.makeStack(i));
}
mods.embers.Melter.add(<liquid:quartz>*666,<ore:dustQuartz>);

//Extra Fixes
mods.embers.Melter.remove(<liquid:aluminum>*144);
mods.embers.Melter.remove(<liquid:aluminum>*16);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*360);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*144);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*16);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*1296);
#mods.nuclearcraft.ingot_former.removeRecipeWithInput(<liquid:aluminum>*144);
#mods.nuclearcraft.electrolyser.removeRecipeWithInput(<liquid:alumina>*144);
#mods.nuclearcraft.electrolyser.addRecipe(<liquid:alumina>*144, <liquid:aluminium>*288, <liquid:oxygen>*3000, null, null);

#mods.embers.Melter.add(<liquid:aluminium>*144,<ore:dustAluminum>);
#mods.embers.Melter.add(<liquid:aluminium>*144,<ore:ingotAluminum>);

//Redstone Alchemical Slurry
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1008);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*144);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1296);

mods.embers.Melter.add(<liquid:redstone>*144,<ore:dustRedstone>); 
mods.embers.Melter.add(<liquid:redstone>*1296,<ore:blockRedstone>); 

mods.embers.Mixer.add(<liquid:alchemical_redstone>*288, [<liquid:liquidchorus>*125,<liquid:redstone>*144,<liquid:menrilresin>*250]);
#=============================================================================================================================================		

//Alloys
//mods.embers.Mixer.add(ILiquidStack <outputfluid>,ILiquidStack [<inputfluid1>,<inputfluid2>,<inputfluid3>,...]);

//Red Alloy
mods.embers.Mixer.add(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);

//Bismuth Bronze
mods.embers.Mixer.add(<liquid:bismuth_bronze>*144, [<liquid:bismuth>*144,<liquid:zinc>*288,<liquid:copper>*576]);
//Black Bronze
mods.embers.Mixer.add(<liquid:black_bronze>*144, [<liquid:gold>*288,<liquid:silver>*288,<liquid:copper>*720]);
//Brass
mods.embers.Mixer.add(<liquid:brass>*144, [<liquid:zinc>*144,<liquid:copper>*864]);
//Bronze
mods.embers.Mixer.remove(<liquid:bronze>*8);	
mods.embers.Mixer.add(<liquid:bronze>*144, [<liquid:tin>*144,<liquid:copper>*864]);
//Rose Gold
mods.embers.Mixer.add(<liquid:rose_gold>*144, [<liquid:copper>*144,<liquid:gold>*720]);
//Sterling Silver
mods.embers.Mixer.add(<liquid:sterling_silver>*144, [<liquid:copper>*288,<liquid:silver>*576]);
//Steel
//Weak Steel
mods.embers.Mixer.add(<liquid:weak_steel>*144, [<liquid:black_bronze>*144,<liquid:nickel>*288,<liquid:steel>*720]);
//Weak Blue Steel
mods.embers.Mixer.add(<liquid:weak_blue_steel>*144, [<liquid:bismuth_bronze>*144,<liquid:sterling_silver>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Weak Red Steel
mods.embers.Mixer.add(<liquid:weak_red_steel>*144, [<liquid:brass>*144,<liquid:rose_gold>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Constantan
mods.embers.Mixer.add(<liquid:constantan>*144, [<liquid:copper>*432,<liquid:nickel>*432]);
//Electrum
mods.embers.Mixer.remove(<liquid:electrum>*8);	
mods.embers.Mixer.add(<liquid:electrum>*144, [<liquid:silver>*432,<liquid:gold>*432]);
//Invar
mods.embers.Mixer.add(<liquid:invar>*144, [<liquid:nickel>*288,<liquid:iron>*432]);
//Aluminium Brass
mods.embers.Mixer.add(<liquid:aluminium_brass>*144, [<liquid:copper>*288,<liquid:aluminium>*576]);
//Manyullyn
mods.embers.Mixer.add(<liquid:manyullyn>*144, [<liquid:ardite>*432,<liquid:cobalt>*432]);
//Tungsten Steel
mods.embers.Mixer.add(<liquid:tungsten_steel>*144, [<liquid:tungsten>*144,<liquid:steel>*720]);
//Mithril
mods.embers.Mixer.add(<liquid:mithril>*144, [<liquid:antimony>*144,<liquid:copper>*864]);
#=============================================================================================================================================		

#=============================================================================================================================================		

//Dilithium

<taiga:dilithium_crystal>.displayName = "Raw Dilithium Crystal";
<libvulpes:productgem:0>.displayName = "Refined Dilithium Crystal";
mods.tconstruct.Melting.removeRecipe(<liquid:dilithium_fluid>);

mods.immersiveengineering.Crusher.removeRecipe(<libvulpes:productgem>);
recipes.remove(<libvulpes:productgem>);
mods.embers.Stamper.remove(<libvulpes:productgem>);
mods.advancedrocketry.Crystallizer.removeRecipe(<libvulpes:productgem>);

mods.immersiveengineering.Crusher.removeRecipe(<taiga:dilithium_dust>);
recipes.remove(<taiga:dilithium_dust>);
mods.embers.Stamper.remove(<taiga:dilithium_dust>);
#mods.nuclearcraft.manufactory.removeRecipeWithOutput(<taiga:dilithium_dust>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<taiga:dilithium_ingot>);

mods.embers.Melter.remove(<liquid:dilithium_fluid>);

val MelterDoreInputs = [<ore:ingotDilithium>,<ore:nuggetDilithium>,<ore:oreDilithium>,<ore:blockDilithium>,<ore:dustDilithium>,<ore:gemDilithium>] as IOreDictEntry[];
for i, MDOI in MelterDoreInputs{
    for DOIS in MDOI.items{ 
mods.embers.Melter.remove(DOIS);
    }
}
#=============================================================================================================================================		


//Bauxite/Aluminium - Bayer Process
    mods.embers.Melter.add(<liquid:alumina>*144, <pyrotech:generated_slag_aluminium_custom>);
    mods.pyrotech.BrickCrucible.addRecipe(<liquid:alumina>.name,<liquid:alumina>*144,<pyrotech:generated_slag_aluminium_custom>,2400);
    mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:sodium_hydroxide_solution>*500, <tfc:ore/small/bauxite>*10, 2, 448.0, <liquid:sodium_aluminate>*144);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:sodium_aluminate>*144, <liquid:alumina>*144, <liquid:red_mud>*144, null, null);
    mods.embers.Melter.add(<liquid:aluminium>*144, <tfctech:metal/aluminium_long_rod>);

//Titanium
    #mods.terrafirmacraft.ItemRegistry.registerItemMetal(<libvulpes:ore0:8>, "TITANIUM", 100, true);
    #Rutile to Titania ADVrocketry XML files
    mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
    mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<libvulpes:ore0:8>);
    #mods.nuclearcraft.melter.removeRecipeWithInput(<libvulpes:ore0:8>);
    mods.advancedrocketry.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);

//Iridium
    mods.immersiveengineering.Crusher.removeRecipesForInput(<morebees:dustiridium>);
    mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<libvulpes:productdust:10>);
    mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:10>);
    ArcFurnace.addRecipe(<morebees:dustiridium>, <pyrotech:generated_slag_iridium_custom>, <immersiveengineering:material:7>, 2400, 2400, [<tfc:powder/flux>]);
    ArcFurnace.addRecipe(<libvulpes:productingot:10>, <morebees:dustiridium>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:ceramics/fired/mold/ingot>]);

//Iron

ArcFurnace.addRecipe(<tfc:metal/scrap/wrought_iron>, <ore:oreIronSmall>*10, <immersiveengineering:material:7>, 2400, 2400, [<tfc:powder/flux>]);
ArcFurnace.addRecipe(<tfc:metal/ingot/wrought_iron>, <pyrotech:generated_slag_iron_custom>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:ceramics/fired/mold/ingot>]);

mods.pyrotech.Bloomery.createBloomeryBuilder("Iron_from_acid",<tfc:bloom/refined>,<pyrotech:generated_slag_iron_custom>,false)
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(14400)
    .setFailureChance(0.01)
    .setBloomYield(1, 1)
    .setSlagItem(<immersiveengineering:material:7>, 2)
    .addFailureItem(<immersiveengineering:material:7>, 1)
    .setLangKey("tile.oreIron;item.pyrotech.slag.unique")
    .register();

//Pig Iron

mods.immersiveengineering.BlastFurnace.addRecipe( <tfc:metal/scrap/pig_iron>, <pyrotech:generated_slag_iron_custom>,2000);
ArcFurnace.addRecipe(<tfc:metal/ingot/pig_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:powder/coke>,<tfc:ceramics/fired/mold/ingot>]);
ArcFurnace.addRecipe(<tfc:metal/ingot/pig_iron>, <pyrotech:generated_slag_iron_custom>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:powder/coke>,<tfc:ceramics/fired/mold/ingot>]);


//Steelingot
BlastFurnace.remove(<railcraft:ingot>);
BlastFurnace.remove(<railcraft:nugget>);
BlastFurnace.remove(<railcraft:metal:3>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:pig_iron>*288, <tfc:powder/flux>, -0.75, 773.0, <liquid:steel>*144);

    //Mechanical Metal Working

    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/pig_iron>*2, <contenttweaker:striking_die>, 2000);
    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>*2, <contenttweaker:striking_die>, 2000);

    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/high_carbon_steel>],<tfc:metal/ingot/pig_iron>,<tfc:powder/flux>);
    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/steel>],<tfc:metal/ingot/high_carbon_steel>,<tfc:powder/flux>);

//Sulfuric Acid

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:iron_sulfate>, <ore:oreIronSmall>, <ore:dustSulfur>, 2400);

mods.pyrotech.StoneCrucible.addRecipe("Primtive_Sulfur_Trioxide",<liquid:sulfur_trioxide>*500,<contenttweaker:iron_sulfate>,2400,true);

val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.terrafirmacraft.Barrel.addRecipe("Primitive Sulfuric Acid"~i, FC.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), <liquid:sulfur_trioxide>*1000, FC, <liquid:sulfuric_acid>*1000, 4);
}

//Oxygen
    mods.embers.Stamper.add(<contenttweaker:zeolite_powder>*4,<liquid:alumina>*144, <embers:stamp_flat>,<ore:sandSilica>); #zeolite
    
    mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:zeolite_powder>, <ore:sandSilica>, <contenttweaker:bauxitedust>, 2400); #zeolite

    recipes.addShapeless("Oxygen_can",<forestry:can:1>.withTag({Fluid: {FluidName: "oxygen", Amount: 1000}}), #oxygen
    [<pneumaticcraft:air_canister:*>.transformDamage(1000),<contenttweaker:zeolite_powder>,<forestry:can>]);

//Hydrochlroic Acid 
    mods.embers.Mixer.add(<liquid:hydrogen_chloride>*1000, [<liquid:brine>*750,<liquid:sulfuric_acid>*500]);

    mods.embers.Mixer.add(<liquid:hydrochloric_acid>*1000, [<liquid:hydrogen_chloride>*500,<liquid:distwater>*500]);

//Chlroine 
    mods.embers.Mixer.add(<liquid:chlorine>*1000, [<liquid:hydrogen_chloride>*1000,<liquid:oxygen>*500]);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:brine>*1000, <liquid:chlorine>*500, <liquid:hydrogen>*250, <liquid:sodium_hydroxide_solution>*500, null);

#=============================================================================================================================================		

//Rubber 

furnace.remove(<thebetweenlands:items_misc:23>);
furnace.remove(<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.aether_legacy.Freezer.registerFreezable(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>,800);
mods.pneumaticcraft.heatframecooling.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.cfm.Freezer.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
moretweaker.bewitchment.FrostFire.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>,<thebetweenlands:bl_bucket_rubber:1>);
mods.cyclicmagic.Solidifier.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>, [<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})], "rubber", 1000);
recipes.addShapeless(<thebetweenlands:syrmorite_bucket_solid_rubber>,[<thebetweenlands:bl_bucket_rubber:1>,<thermalfoundation:material:1025>]);


#=============================================================================================================================================		

//Wood

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>,<tfc:wood/log/birch>,<tfc:wood/log/blackwood>,<tfc:wood/log/chestnut>,<tfc:wood/log/douglas_fir>,<tfc:wood/log/hickory>,<tfc:wood/log/kapok>,<tfc:wood/log/maple>,<tfc:wood/log/oak>,<tfc:wood/log/palm>,<tfc:wood/log/pine>,<tfc:wood/log/rosewood>,<tfc:wood/log/sequoia>,<tfc:wood/log/spruce>,<tfc:wood/log/sycamore>,<tfc:wood/log/white_cedar>,<tfc:wood/log/willow>,<tfc:wood/log/hevea>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];
for i, log in iLogs{

#mods.pyrotech.Chopping.addRecipe("Log to Lumber"~i,iLumber[i],log,[4],[4]);

mods.horsepower.ChoppingBlock.add(log, iLumber[i]*10, 2, false);
mods.horsepower.ChoppingBlock.add(log, iLumber[i]*3, 6, true);

mods.pyrotech.StoneSawmill.addRecipe("Brass Saw Blade"~i,iLumber[i]*4,log,200,<pyrotech:sawmill_blade_gold>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Bronze Saw Blade"~i,iLumber[i]*4,log,200,<pyrotech:sawmill_blade_bone>,4,true);

mods.pyrotech.StoneSawmill.addRecipe("Wrought Iron Saw Blade"~i,iLumber[i]*8,log,200,<pyrotech:sawmill_blade_iron>,4,true);

mods.pyrotech.StoneSawmill.addRecipe("Steel Saw Blade"~i,iLumber[i]*10,log,200,<pyrotech:sawmill_blade_stone>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Black Steel Saw Blade"~i,iLumber[i]*10,log,200,<pyrotech:sawmill_blade_flint>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Manyullyn Saw Blade"~i,iLumber[i]*12,log,200,<pyrotech:sawmill_blade_obsidian>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Diamond Tipped Steel Saw Blade"~i,iLumber[i]*16,log,200,<pyrotech:sawmill_blade_diamond>,0,true);

}
*/