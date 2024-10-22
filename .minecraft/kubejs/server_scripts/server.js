// priority: 0

// Visit the wiki for more info - https://kubejs.com/


TFCEvents.data(event => {
    event.knappingType('embers:caminite_blend', 2, 1, 'tfc:item.knapping.clay', false, true, true, 'embers:caminite_blend', 'kubejs:caminite')
    event.knappingType('productivebees:wax', 2, 1, 'tfc:item.knapping.clay', false, false, true, 'productivebees:wax', 'kubejs:wax')

    //event.metal('kubejs:metallic_naquadah', 2000, 0.8, 'sgjourney:naquadah_alloy', null, 'kubejs:naquadah_sheet', 5, 'kubejs:naquadah')
    
})

ServerEvents.tags('item', event => {
event.remove('forge:plates','tfc:metal/sheet/brass')
event.remove('forge:plates','tfc:metal/sheet/copper')
event.remove('forge:plates','tfc:metal/sheet/gold')
event.remove('forge:plates','tfc:metal/sheet/wrought_iron')
event.remove('forge:plates','tfc:metal/sheet/steel')
event.remove('forge:plates','tfc_ie_addon:metal/sheet/electrum')
event.remove('forge:plates','tfc_ie_addon:metal/sheet/constantan')
event.remove('forge:plates','tfc_ie_addon:metal/sheet/lead')
event.remove('forge:plates','tfc_ie_addon:metal/sheet/uranium')
event.remove('forge:plates','tfc_ie_addon:metal/sheet/aluminum')

event.remove('forge:plates','firmalife:metal/sheet/chromium')
event.remove('forge:plates','firmalife:metal/sheet/stainless_steel')
event.remove('forge:plates','tfc:metal/sheet/bismuth')
event.remove('forge:plates','tfc:metal/sheet/bismuth_bronze')
event.remove('forge:plates','tfc:metal/sheet/black_bronze')
event.remove('forge:plates','tfc:metal/sheet/bronze')
event.remove('forge:plates','tfc:metal/sheet/nickel')
event.remove('forge:plates','tfc:metal/sheet/rose_gold')
event.remove('forge:plates','tfc:metal/sheet/silver')
event.remove('forge:plates','tfc:metal/sheet/tin')
event.remove('forge:plates','tfc:metal/sheet/zinc')
event.remove('forge:plates','tfc:metal/sheet/sterling_silver')
event.remove('forge:plates','tfc:metal/sheet/cast_iron')
event.remove('forge:plates','tfc:metal/sheet/steel')
event.remove('forge:plates','tfc:metal/sheet/black_steel')
event.remove('forge:plates','tfc:metal/sheet/blue_steel')
event.remove('forge:plates','tfc:metal/sheet/red_steel')

event.remove('forge:plates/chromium','firmalife:metal/sheet/chromium')
event.remove('forge:plates/stainless_steel','firmalife:metal/sheet/stainless_steel')
event.remove('forge:plates/bismuth','tfc:metal/sheet/bismuth')
event.remove('forge:plates/bismuth_bronze','tfc:metal/sheet/bismuth_bronze')
event.remove('forge:plates/black_bronze','tfc:metal/sheet/black_bronze')
event.remove('forge:plates/bronze','tfc:metal/sheet/bronze')
event.remove('forge:plates/nickel','tfc:metal/sheet/nickel')
event.remove('forge:plates/rose_gold','tfc:metal/sheet/rose_gold')
event.remove('forge:plates/silver','tfc:metal/sheet/silver')
event.remove('forge:plates/tin','tfc:metal/sheet/tin')
event.remove('forge:plates/zinc','tfc:metal/sheet/zinc')
event.remove('forge:plates/sterling_silver','tfc:metal/sheet/sterling_silver')
event.remove('forge:plates/cast_iron','tfc:metal/sheet/cast_iron')
event.remove('forge:plates/steel','tfc:metal/sheet/steel')
event.remove('forge:plates/black_steel','tfc:metal/sheet/black_steel')
event.remove('forge:plates/blue_steel','tfc:metal/sheet/blue_steel')
event.remove('forge:plates/red_steel','tfc:metal/sheet/red_steel')

event.remove('forge:plates/electrum','tfc_ie_addon:metal/sheet/electrum')
event.remove('forge:plates/constantan','tfc_ie_addon:metal/sheet/constantan')
event.remove('forge:plates/lead','tfc_ie_addon:metal/sheet/lead')
event.remove('forge:plates/uranium','tfc_ie_addon:metal/sheet/uranium')
event.remove('forge:plates/aluminum','tfc_ie_addon:metal/sheet/aluminum')

event.remove('forge:plates/brass','tfc:metal/sheet/brass')
event.remove('forge:plates/copper','tfc:metal/sheet/copper')
event.remove('forge:plates/gold','tfc:metal/sheet/gold')
event.remove('forge:plates/iron','tfc:metal/sheet/wrought_iron')
event.remove('railways:internal/plates/iron_plates','tfc:metal/sheet/wrought_iron')
event.remove('forge:plates/obsidian','tfc:metal/sheet/steel')
event.remove('forge:dusts/coal_coke','tfmg:coal_coke_dust')

event.remove('forge:ingots/iron',['betterend:thallasium_ingot','betternether:cincinnasite_ingot'])

event.add('forge:storage_blocks/bronze', '#forge:storage_blocks/strong_bronze')
event.add('forge:ingots/bronze', '#forge:ingots/strong_bronze')
event.add('forge:nuggets/bronze', '#forge:nuggets/strong_bronze')
event.add('forge:plates/bronze', '#forge:plates/strong_bronze')
//event.add('map_atlases:sticky_crafting_items','#forge:dough')

event.add('tfc:usable_on_tool_rack', '#minecraft:tools')

event.add('botania:seed_apothecary_reagent', '#tfc:seeds')

//event.add('tfc:saws','aether:obsidian_gloves')
//event.add('tfc:axes_that_log','aether:obsidian_gloves')
event.add('forge:slimeballs','tfc:glue')

event.add('forge:plates','railcraft:tin_plate')
event.add('forge:plates','railcraft:zinc_plate')
event.add('forge:plates','railcraft:bronze_plate')
event.add('forge:plates','railcraft:invar_plate')

event.add('forge:honeycombs','firmalife:beeswax')

event.add('tfc:pileable_ingots', 'sgjourney:naquadah_alloy')
event.add('tfc:pileable_ingots', 'botania:manasteel_ingot')
//event.add(`tfc:pileable_ingots`,`#forge:ingots`)

event.add('iceandfire:heal_hippocampus', '#minecraft:kelp')
event.add('iceandfire:tempt_hippocampus', '#minecraft:kelp')

event.add('forge:bottle_stopper',['afc:rubber_bar','firmalife:cork'])

//event.add('supplementaries:soap_dye_clean_blacklist', '#forge:glass')
//event.add('supplementaries:soap_dye_clean_blacklist', '#forge:panes/glass')
})

ServerEvents.tags('block', event => {
event.add("minecraft:dirt",["#tfc:grass","#tfc:dirt"])
//event.add('supplementaries:soap_dye_clean_blacklist', '#forge:glass')
//event.add('supplementaries:soap_dye_clean_blacklist', '#forge:panes/glass')
})

ServerEvents.tags("worldgen/biome", (event) => {
    event.add("tfc:overworld", ["tfc:badlands","tfc:canyons","tfc:deep_ocean","tfc:deep_ocean_trench","tfc:highlands","tfc:hills","tfc:inverted_badlands","tfc:lake","tfc:low_canyons","tfc:lowlands","tfc:mountain_lake","tfc:mountains","tfc:ocean","tfc:ocean_reef","tfc:oceanic_mountain_lake","tfc:oceanic_mountains","tfc:old_mountain_lake","tfc:old_mountains","tfc:plains","tfc:plateau","tfc:plateau_lake","tfc:river","tfc:rolling_hills","tfc:salt_marsh","tfc:shore","tfc:tidal_flats","tfc:volcanic_mountain_lake","tfc:volcanic_mountains","tfc:volcanic_oceanic_mountain_lak","tfc:volcanic_oceanic_mountains"])
    event.add("minecraft:is_overworld", ["#tfc:overworld"])
    event.add("minecraft:is_badlands", ["tfc:inverted_badlands", "tfc:badlands"])
    event.add("minecraft:is_beach", ["tfc:shore", "tfc:tidal_flats"])
    event.add("minecraft:is_deep_ocean", ["tfc:deep_ocean_trench", "tfc:deep_ocean","sgjourney:lantean_deep_ocean"])
    event.add("minecraft:is_hill", ["tfc:rolling_hills", "tfc:hills"])
    event.add("minecraft:is_mountain", ["tfc:volcanic_oceanic_mountains","tfc:old_mountains","tfc:volcanic_mountains","tfc:mountains","tfc:oceanic_mountains","tfc:highlands"])
    event.add("minecraft:is_ocean", ["tfc:ocean", "tfc:ocean_reef","sgjourney:lantean_deep_ocean","tfc:deep_ocean_trench", "tfc:deep_ocean"])
    event.add("minecraft:is_river", ["tfc:river"])
    event.add("minecraft:is_lake", ["tfc:volcanic_mountain_lake","tfc:volcanic_oceanic_mountain_lake","tfc:oceanic_mountain_lake","tfc:mountain_lake","tfc:plateau_lake","tfc:lake","tfc:old_mountain_lake"])
    event.add("minecraft:is_savanna", ["tfc:plains", "tfc:plateau"])
    event.add("minecraft:is_lowland", ["tfc:lowlands", "tfc:low_canyons"])
    event.add("the_afterdark:has_structure/teleport_altar", ["northstar:lunar_asurine_caves"])

//Tag adds "Stolen" From Below
//https://github.com/AllTheMods/Gravitas2/blob/main/kubejs/server_scripts/tags/worldgen_biomes.js
    event.add("createpickywheels:picky_waterwheels", ["tfc:river"])
    event.add("createpickywheels:picky_windmills", ["#aether:is_aether"])
    event.add("botania:mystical_flower_spawnlist",["#tfc:overworld","#aether:is_aether"])
    event.add("sgjourney:has_structure/terra_stargate_biomes",["#tfc:overworld"])
    event.add("sgjourney:has_structure/buried_stargate/buried_stargate_biomes",["#tfc:overworld"])
    event.add("ftbessentials:ignore_rtp",["tfc:ocean","tfc:ocean_reef","tfc:deep_ocean","tfc:deep_ocean_trench"])
    event.add("creeperoverhaul:where_creepers_spawn",["#tfc:overworld"])
    event.add("endermanoverhaul:cave_spawns",["#tfc:overworld"])
    event.add("endermanoverhaul:badlands_spawns",["tfc:badlands","tfc:inverted_badlands"])
    event.add("endermanoverhaul:coral_spawns",["tfc:ocean_reef"])
    event.add("endermanoverhaul:savanna_spawns", ["tfc:plains", "tfc:plateau"])
    event.add("endermanoverhaul:windswept_hills_spawns",["aether:skyroot_meadow"])

    event.add("minecraft:mineshaft_blocking", ["#tfc:overworld"])
    event.add("minecraft:snow_golem_melts", ["#tfc:is_volcanic"])
    
    event.add("additionalstructures:as_custom",["#tfc:overworld"])
    event.add("betterdeserttemples:has_structure/better_desert_temple",["tfc:inverted_badlands"])
    event.add("betteroceanmonuments:has_structure/better_ocean_monument",["tfc:deep_ocean_trench"])
    event.add("betterstrongholds:has_structure/better_stronghold",["#tfc:overworld"])
    event.add("betterwitchhuts:has_structure/better_witch_hut",["tfc:lowlands"])
    event.add("betterwitchhuts:has_structure/witch_circle",["tfc:lowlands"])
    event.add("minecraft:has_closer_water_fog",["tfc:lowlands"])

//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_classic>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_iberian>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_oriental>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_rustic>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_swedish>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/pillager_outpost_tudor>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_classic>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_iberian>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_mediterranean>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_nilotic>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_oriental>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_piglin>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_rustic>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_swedish>
//    <tag:worldgen/biome:towns_and_towers:has_structure/exclusives/village_tudor>

event.add("towns_and_towers:has_structure/pillager_outpost_badlands",["minecraft:is_badlands"])
event.add("towns_and_towers:has_structure/pillager_outpost_beach",["minecraft:is_beach"])
//event.add("towns_and_towers:has_structure/pillager_outpost_birch_forest",["minecraft:is_birch_fores","minecraft:is_old_growth_birch_forest"])
event.add("towns_and_towers:has_structure/pillager_outpost_deep_oceans",["minecraft:is_deep_ocean"])
//event.add("towns_and_towers:has_structure/pillager_outpost_desert",["minecraft:is_desert"])
//event.add("towns_and_towers:has_structure/pillager_outpost_flower_forest",["minecraft:is_cherry_grov","minecraft:is_flower_forest"])
//event.add("towns_and_towers:has_structure/pillager_outpost_forest",["minecraft:is_forest"])
//event.add("towns_and_towers:has_structure/pillager_outpost_grove",["minecraft:is_grove"])
//event.add("towns_and_towers:has_structure/pillager_outpost_jungle",["minecraft:is_jungle"])
//event.add("towns_and_towers:has_structure/pillager_outpost_meadow",["minecraft:is_meadow"])
//event.add("towns_and_towers:has_structure/pillager_outpost_mushroom_fields",["minecraft:is_mushroom_fields"])
//event.add("towns_and_towers:has_structure/pillager_outpost_old_growth_taiga",["minecraft:is_old_growth_pine_taig","minecraft:is_old_growth_spruce_taiga"])
event.add("towns_and_towers:has_structure/pillager_outpost_savanna",["minecraft:is_savanna"])
//event.add("towns_and_towers:has_structure/pillager_outpost_savanna_plateau",["minecraft:is_savanna_plateau"])
//event.add("towns_and_towers:has_structure/pillager_outpost_snowy_beach",["minecraft:is_snowy_beach"])
//event.add("towns_and_towers:has_structure/pillager_outpost_snowy_plains",["minecraft:is_snowy_plains"])
//event.add("towns_and_towers:has_structure/pillager_outpost_snowy_slopes",["minecraft:is_snowy_slopes"])
//event.add("towns_and_towers:has_structure/pillager_outpost_snowy_taiga",["minecraft:is_snowy_taiga"])
//event.add("towns_and_towers:has_structure/pillager_outpost_sparse_jungle",["minecraft:is_sparse_jungle"])
//event.add("towns_and_towers:has_structure/pillager_outpost_sunflower_plains",["minecraft:is_sunflower_plains"])
event.add("towns_and_towers:has_structure/pillager_outpost_swamp",["minecraft:is_lowland"])
//event.add("towns_and_towers:has_structure/pillager_outpost_taiga",["minecraft:is_taiga"])
//event.add("towns_and_towers:has_structure/pillager_outpost_wooded_badlands",["minecraft:is_wooded_badlands"])
event.add("towns_and_towers:has_structure/shallow_oceans_wreckage",["minecraft:is_ocean"])
event.add("towns_and_towers:has_structure/village_badlands_pueblo",["minecraft:is_badlands"])
event.add("towns_and_towers:has_structure/village_beach_lighthouse",["minecraft:is_beach"])
//event.add("towns_and_towers:has_structure/village_birch_forest_romanian",["minecraft:is_birch_fores","minecraft:is_old_growth_birch_forest"])
event.add("towns_and_towers:has_structure/village_deep_oceans_ships",["minecraft:is_deep_ocean"])
//event.add("towns_and_towers:has_structure/village_flower_forest_japanese",["minecraft:is_cherry_grov","minecraft:is_flower_forest"])
//event.add("towns_and_towers:has_structure/village_forest_ruins",["minecraft:is_forest"])
//event.add("towns_and_towers:has_structure/village_grove_villager_outpost",["minecraft:is_grove"])
//event.add("towns_and_towers:has_structure/village_jungle_tribal",["minecraft:is_jungle"])
//event.add("towns_and_towers:has_structure/village_meadow_swiss",["minecraft:is_meadow"])
//event.add("towns_and_towers:has_structure/village_mushroom_fields_fantasy",["minecraft:is_mushroom_fields"])
//event.add("towns_and_towers:has_structure/village_old_growth_taiga_polish",["minecraft:is_old_growth_pine_taig","minecraft:is_old_growth_spruce_taiga"])
//event.add("towns_and_towers:has_structure/village_savanna_plateau_ramshackled",["minecraft:is_savanna_plateau"])
//event.add("towns_and_towers:has_structure/village_snowy_slopes_inn",["minecraft:is_snowy_slopes"])
//event.add("towns_and_towers:has_structure/village_snowy_taiga_viking",["minecraft:is_snowy_taiga"])
//event.add("towns_and_towers:has_structure/village_sparse_jungle_polynesian",["minecraft:is_sparse_jungle"])
//event.add("towns_and_towers:has_structure/village_sunflower_plains_farm",["minecraft:is_sunflower_plains"])
event.add("towns_and_towers:has_structure/village_swamp_boat",["minecraft:is_lowland"])
//event.add("towns_and_towers:has_structure/village_wooded_badlands_tipi",["minecraft:is_wooded_badlands"])



event.add("forge:is_water",["tfc:river","tfc:ocean","tfc:ocean_reef","tfc:deep_ocean","tfc:deep_ocean_trench","sgjourney:lantean_deep_ocean"])

})
BlockEvents.rightClicked(event => {
    let item = event.item
    let block = event.block
    if (item.hasTag("tfc:axes_that_log") && block.hasTag('minecraft:logs') && !block.hasTag('forge:stripped_logs')) {
    block.popItem('farmersdelight:tree_bark')
    }
  })

BlockEvents.rightClicked('block.right_click', event => {
    const { player, hand, item} = event;
    if (hand != 'MAIN_HAND') return;
    if (!item.hasNBT()) return;
    if ((item.id == 'firmalife:beehive_frame') && item.getNbtString().includes('queen:1')) {
        item.count--
        event.player.tell("The frame broke while freeing the queen");
        let mob = event.block.up.createEntity('minecraft:bee')
        mob.spawn()
}
})

TFCEvents.limitContainer('minecraft:generic_9x3', event => {
    event.limit('large')
})
TFCEvents.limitContainer('minecraft:generic_9x6', event => {
    event.limit('large')
})

TFCEvents.data(event => {
    event.fuel('embers:ember_crystal_cluster', 1600, 16000, 1)
    event.fuel('embers:ember_grit', 1200, 300, 1)
})
ServerEvents.tags('item', event => {
event.add('tfc:forge_fuel',['embers:ember_crystal_cluster','embers:ember_grit'])
event.add('tfc:blast_furnace_fuel',['embers:ember_crystal_cluster','embers:ember_grit'])
event.add('tfc:blast_furnace_fuel','embers:ember_crystal_cluster')
event.add('tfc:blast_furnace_fuel','#forge:coal_coke')
event.add('tfc:redstone_ore',['tfc:ore/cryolite','tfc:ore/cinnabar'])

})

ServerEvents.tags('block', event => {
    event.add("tfc:forge_insulation",["#minecraft:stone_bricks"])
    event.add("tfc:forge_insulation",["embers:caminite_bricks","embers:caminite_large_bricks","embers:caminite_large_tile","embers:caminite_tiles","embers:archaic_bricks","embers:archaic_edge","embers:archaic_tile","embers:archaic_large_bricks","embers:ashen_stone","embers:ashen_brick","embers:ashen_tile"])
    event.add("tfc:forge_invisible_whitelist",["#quark:hollow_logs"])    
    event.add("tfc:forge_invisible_whitelist",["sootychimneys:brick_chimney","sootychimneys:dirty_brick_chimney","sootychimneys:cobblestone_chimney","sootychimneys:dirty_cobblestone_chimney","sootychimneys:stone_brick_chimney","sootychimneys:dirty_stone_brick_chimney","sootychimneys:mud_brick_chimney","sootychimneys:dirty_mud_brick_chimney","sootychimneys:iron_chimney","sootychimneys:dirty_iron_chimney","sootychimneys:copper_chimney","sootychimneys:dirty_copper_chimney","sootychimneys:terracotta_chimney","sootychimneys:dirty_terracotta_chimney","quark:chute","minecraft:hopper","create:chute","immersiveengineering:chute_iron","immersiveengineering:chute_steel","immersiveengineering:chute_aluminum","immersiveengineering:chute_copper"])
})

ServerEvents.tags('fluid', event => {
    event.add("tfc:usable_in_wooden_bucket",["immersiveengineering:redstone_acid"])
    event.add("tfc:usable_in_pot",["immersiveengineering:redstone_acid"])
})

let mobReplacementMap = ['cow', 'cat', 'chicken', 'salmon', 'cod', 'tropical_fish', 'pufferfish', 'dolphin', 'squid', 'turtle', 'frog', 'polar_bear', 'wolf', 'pig', 'goat', 'sheep', 'rabbit', 'fox', 'panda', 'ocelot', 'donkey', 'mule', 'horse' ]
mobReplacementMap.forEach(mob => {
EntityEvents.spawned(event => {
    if (event.entity.type == 'minecraft:'+ mob) {
      let newMob = event.entity.block.createEntity('tfc:'+ mob)
      newMob.spawn()
      event.entity.discard()
      event.cancel()
    }
  })})

let MINECRAFT_TO_TFC_MAPS = {
    "minecraft:acacia_boat": "tfc:wood/boat/acacia",
    "minecraft:acacia_button": "tfc:wood/planks/acacia_button",
    "minecraft:acacia_chest_boat": "tfc:wood/boat/acacia",
    "minecraft:acacia_door": "tfc:wood/planks/acacia_door",
    "minecraft:acacia_fence": "tfc:wood/planks/acacia_fence",
    "minecraft:acacia_fence_gate": "tfc:wood/planks/acacia_fence_gate",
    "minecraft:acacia_hanging_sign": "tfc:wood/copper/hanging_sign/acacia",
    "minecraft:acacia_leaves": "tfc:wood/leaves/acacia",
    "minecraft:acacia_log": "tfc:wood/log/acacia",
    "minecraft:acacia_planks": "tfc:wood/planks/acacia",
    "minecraft:acacia_pressure_plate": "tfc:wood/planks/acacia_pressure_plate",
    "minecraft:acacia_sapling": "tfc:wood/sapling/acacia",
    "minecraft:acacia_sign": "tfc:wood/sign/acacia",
    "minecraft:acacia_slab": "tfc:wood/planks/acacia_slab",
    "minecraft:acacia_stairs": "tfc:wood/planks/acacia_stairs",
    "minecraft:acacia_trapdoor": "tfc:wood/planks/acacia_trapdoor",
    "minecraft:acacia_wood": "tfc:wood/wood/acacia",
    "minecraft:andesite": "tfc:rock/raw/andesite",
    "minecraft:andesite_slab": "tfc:rock/raw/andesite_slab",
    "minecraft:andesite_stairs": "tfc:rock/raw/andesite_stairs",
    "minecraft:andesite_wall": "tfc:rock/raw/andesite_wall",
    "minecraft:anvil": "tfc:metal/anvil/copper",
    "minecraft:barrel": "tfcbarrels:wood/barrel/birch",
    "minecraft:bee_nest": "firmalife:beehive",
    "minecraft:bell": "tfc:bronze_bell",
    "minecraft:birch_boat": "tfc:wood/boat/birch",
    "minecraft:birch_button": "tfc:wood/planks/birch_button",
    "minecraft:birch_chest_boat": "tfc:wood/boat/birch",
    "minecraft:birch_door": "tfc:wood/planks/birch_door",
    "minecraft:birch_fence": "tfc:wood/planks/birch_fence",
    "minecraft:birch_fence_gate": "tfc:wood/planks/birch_fence_gate",
    "minecraft:birch_hanging_sign": "tfc:wood/copper/hanging_sign/birch",
    "minecraft:birch_leaves": "tfc:wood/leaves/birch",
    "minecraft:birch_log": "tfc:wood/log/birch",
    "minecraft:birch_planks": "tfc:wood/planks/birch",
    "minecraft:birch_pressure_plate": "tfc:wood/planks/birch_pressure_plate",
    "minecraft:birch_sapling": "tfc:wood/sapling/birch",
    "minecraft:birch_sign": "tfc:wood/sign/birch",
    "minecraft:birch_slab": "tfc:wood/planks/birch_slab",
    "minecraft:birch_stairs": "tfc:wood/planks/birch_stairs",
    "minecraft:birch_trapdoor": "tfc:wood/planks/birch_trapdoor",
    "minecraft:birch_wood": "tfc:wood/wood/birch",
    "minecraft:black_candle": "tfc:candle/black",
    "minecraft:blue_candle": "tfc:candle/blue",
    "minecraft:brain_coral": "tfc:coral/brain_coral",
    "minecraft:brain_coral_fan": "tfc:coral/brain_coral_fan",
    "minecraft:brown_candle": "tfc:candle/brown",
    "minecraft:bubble_coral": "tfc:coral/bubble_coral",
    "minecraft:bubble_coral_fan": "tfc:coral/bubble_coral_fan",
    "minecraft:cherry_boat": "tfc:wood/boat/kapok",
    "minecraft:cherry_button": "tfc:wood/planks/kapok_button",
    "minecraft:cherry_chest_boat": "tfc:wood/boat/kapok",
    "minecraft:cherry_door": "tfc:wood/planks/kapok_door",
    "minecraft:cherry_fence": "tfc:wood/planks/kapok_fence",
    "minecraft:cherry_fence_gate": "tfc:wood/planks/kapok_fence_gate",
    "minecraft:cherry_hanging_sign": "tfc:wood/copper/hanging_sign/kapok",
    "minecraft:cherry_leaves": "tfc:wood/leaves/kapok",
    "minecraft:cherry_log": "tfc:wood/log/kapok",
    "minecraft:cherry_planks": "tfc:wood/planks/kapok",
    "minecraft:cherry_pressure_plate": "tfc:wood/planks/kapok_pressure_plate",
    "minecraft:cherry_sapling": "tfc:wood/sapling/kapok",
    "minecraft:cherry_sign": "tfc:wood/sign/kapok",
    "minecraft:cherry_slab": "tfc:wood/planks/kapok_slab",
    "minecraft:cherry_stairs": "tfc:wood/planks/kapok_stairs",
    "minecraft:cherry_trapdoor": "tfc:wood/planks/kapok_trapdoor",
    "minecraft:cherry_wood": "tfc:wood/wood/kapok",
    "minecraft:chest": "tfc:wood/chest/birch",
    "minecraft:chipped_anvil": "tfc:metal/anvil/copper",
    "minecraft:chiseled_deepslate": "tfc:rock/raw/shale",
    "minecraft:chiseled_red_sandstone": "tfc:smooth_sandstone/red",
    "minecraft:chiseled_sandstone": "tfc:smooth_sandstone/yellow",
    "minecraft:chiseled_stone_bricks": "tfc:rock/chiseled/dacite",
    "minecraft:coal_ore": "tfc:ore/bituminous_coal/dacite",
    "minecraft:coarse_dirt": "tfc:dirt/loam",
    "minecraft:cobbled_deepslate": "tfc:rock/raw/shale",
    "minecraft:cobbled_deepslate_slab": "tfc:rock/raw/shale_slab",
    "minecraft:cobbled_deepslate_stairs": "tfc:rock/raw/shale_stairs",
    "minecraft:cobbled_deepslate_wall": "tfc:rock/raw/shale_wall",
    "minecraft:cobblestone": "tfc:rock/raw/dacite",
    "minecraft:cobblestone_slab": "tfc:rock/raw/dacite_slab",
    "minecraft:cobblestone_stairs": "tfc:rock/raw/dacite_stairs",
    "minecraft:cobblestone_wall": "tfc:rock/raw/dacite_wall",
    "minecraft:copper_ore": "tfc:ore/normal_malachite/dacite",
    "minecraft:cracked_deepslate_bricks": "tfc:rock/bricks/shale",
    "minecraft:cracked_deepslate_tiles": "tfc:rock/bricks/shale",
    "minecraft:cracked_stone_bricks": "tfc:rock/cracked_bricks/dacite",
    "minecraft:cut_red_sandstone": "tfc:cut_sandstone/red",
    "minecraft:cut_red_sandstone_slab": "tfc:cut_sandstone/red_slab",
    "minecraft:cut_sandstone": "tfc:cut_sandstone/yellow",
    "minecraft:cut_sandstone_slab": "tfc:cut_sandstone/yellow_slab",
    "minecraft:cyan_candle": "tfc:candle/cyan",
    "minecraft:damaged_anvil": "tfc:metal/anvil/copper",
    "minecraft:dark_oak_boat": "afc:wood/boat/cypress",
    "minecraft:dark_oak_button": "afc:wood/planks/cypress_button",
    "minecraft:dark_oak_chest_boat": "afc:wood/boat/cypress",
    "minecraft:dark_oak_door": "afc:wood/planks/cypress_door",
    "minecraft:dark_oak_fence": "afc:wood/planks/cypress_fence",
    "minecraft:dark_oak_fence_gate": "afc:wood/planks/cypress_fence_gate",
    "minecraft:dark_oak_hanging_sign": "afc:wood/copper/hanging_sign/cypress",
    "minecraft:dark_oak_leaves": "afc:wood/leaves/weeping_cypress",
    "minecraft:dark_oak_log": "afc:wood/log/cypress",
    "minecraft:dark_oak_planks": "afc:wood/planks/cypress",
    "minecraft:dark_oak_pressure_plate": "afc:wood/planks/cypress_pressure_plate",
    "minecraft:dark_oak_sapling": "afc:wood/sapling/weeping_cypress",
    "minecraft:dark_oak_sign": "afc:wood/sign/cypress",
    "minecraft:dark_oak_slab": "afc:wood/planks/cypress_slab",
    "minecraft:dark_oak_stairs": "afc:wood/planks/cypress_stairs",
    "minecraft:dark_oak_trapdoor": "afc:wood/planks/cypress_trapdoor",
    "minecraft:dark_oak_wood": "afc:wood/wood/cypress",
    "minecraft:dead_brain_coral": "tfc:coral/brain_dead_coral",
    "minecraft:dead_brain_coral_fan": "tfc:coral/brain_dead_coral_fan",
    "minecraft:dead_bubble_coral": "tfc:coral/bubble_dead_coral",
    "minecraft:dead_bubble_coral_fan": "tfc:coral/bubble_dead_coral_fan",
    "minecraft:dead_fire_coral": "tfc:coral/fire_dead_coral",
    "minecraft:dead_fire_coral_fan": "tfc:coral/fire_dead_coral_fan",
    "minecraft:dead_horn_coral": "tfc:coral/horn_dead_coral",
    "minecraft:dead_horn_coral_fan": "tfc:coral/horn_dead_coral_fan",
    "minecraft:dead_tube_coral": "tfc:coral/tube_dead_coral",
    "minecraft:dead_tube_coral_fan": "tfc:coral/tube_dead_coral_fan",
    "minecraft:deepslate": "tfc:rock/raw/shale",
    "minecraft:deepslate_brick_slab": "tfc:rock/bricks/shale_slab",
    "minecraft:deepslate_brick_stairs": "tfc:rock/bricks/shale_stairs",
    "minecraft:deepslate_brick_wall": "tfc:rock/bricks/shale_wall",
    "minecraft:deepslate_bricks": "tfc:rock/bricks/shale",
    "minecraft:deepslate_coal_ore": "tfc:ore/bituminous_coal/shale",
    "minecraft:deepslate_copper_ore": "tfc:ore/normal_malachite/shale",
    "minecraft:deepslate_diamond_ore": "tfc:ore/diamond/shale",
    "minecraft:deepslate_emerald_ore": "tfc:ore/emerald/shale",
    "minecraft:deepslate_gold_ore": "tfc:ore/normal_native_gold/shale",
    "minecraft:deepslate_iron_ore": "tfc:ore/pyrite/shale",
    "minecraft:deepslate_lapis_ore": "tfc:ore/lapis_lazuli/shale",
    "minecraft:deepslate_redstone_ore": "tfc:ore/cryolite/shale",
    "minecraft:deepslate_tile_slab": "tfc:rock/raw/shale",
    "minecraft:deepslate_tile_stairs": "tfc:rock/raw/shale",
    "minecraft:deepslate_tile_wall": "tfc:rock/raw/shale",
    "minecraft:deepslate_tiles": "tfc:rock/raw/shale",
    "minecraft:diamond_ore": "tfc:ore/diamond/dacite",
    "minecraft:diorite": "tfc:rock/raw/diorite",
    "minecraft:diorite_slab": "tfc:rock/raw/diorite_slab",
    "minecraft:diorite_stairs": "tfc:rock/raw/diorite_stairs",
    "minecraft:diorite_wall": "tfc:rock/raw/diorite_wall",
    "minecraft:dirt": "tfc:dirt/loam",
    "minecraft:dirt_path": "tfc:grass_path/loam",
    "minecraft:emerald_ore": "tfc:ore/emerald/dacite",
    "minecraft:fire_coral": "tfc:coral/fire_coral",
    "minecraft:fire_coral_fan": "tfc:coral/fire_coral_fan",
    "minecraft:gold_ore": "tfc:ore/normal_native_gold/dacite",
    "minecraft:granite": "tfc:rock/raw/granite",
    "minecraft:granite_slab": "tfc:rock/raw/granite_slab",
    "minecraft:granite_stairs": "tfc:rock/raw/granite_stairs",
    "minecraft:granite_wall": "tfc:rock/raw/granite_wall",
    "minecraft:grass_block": "tfc:grass/loam",
    "minecraft:gravel": "tfc:rock/gravel/dacite",
    "minecraft:gray_candle": "tfc:candle/gray",
    "minecraft:green_candle": "tfc:candle/green",
    "minecraft:horn_coral": "tfc:coral/horn_coral",
    "minecraft:horn_coral_fan": "tfc:coral/horn_coral_fan",
    "minecraft:infested_chiseled_stone_bricks": "tfc:rock/chiseled/dacite",
    "minecraft:infested_cobblestone": "tfc:rock/raw/dacite",
    "minecraft:infested_cracked_stone_bricks": "tfc:rock/cracked_bricks/dacite",
    "minecraft:infested_deepslate": "tfc:rock/raw/shale",
    "minecraft:infested_mossy_stone_bricks": "tfc:rock/mossy_bricks/dacite",
    "minecraft:infested_stone": "tfc:rock/raw/dacite",
    "minecraft:infested_stone_bricks": "tfc:rock/bricks/dacite",
    "minecraft:iron_bars": "tfc:metal/bars/wrought_iron",
    "minecraft:iron_ore": "tfc:ore/pyrite/dacite",
    "minecraft:iron_trapdoor": "tfc:metal/trapdoor/wrought_iron",
    "minecraft:jungle_boat": "afc:wood/boat/teak",
    "minecraft:jungle_button": "afc:wood/planks/teak_button",
    "minecraft:jungle_chest_boat": "afc:wood/boat/teak",
    "minecraft:jungle_door": "afc:wood/planks/teak_door",
    "minecraft:jungle_fence": "afc:wood/planks/teak_fence",
    "minecraft:jungle_fence_gate": "afc:wood/planks/teak_fence_gate",
    "minecraft:jungle_hanging_sign": "afc:wood/copper/hanging_sign/teak",
    "minecraft:jungle_leaves": "afc:wood/leaves/teak",
    "minecraft:jungle_log": "afc:wood/log/teak",
    "minecraft:jungle_planks": "afc:wood/planks/teak",
    "minecraft:jungle_pressure_plate": "afc:wood/planks/teak_pressure_plate",
    "minecraft:jungle_sapling": "afc:wood/sapling/teak",
    "minecraft:jungle_sign": "afc:wood/sign/teak",
    "minecraft:jungle_slab": "afc:wood/planks/teak_slab",
    "minecraft:jungle_stairs": "afc:wood/planks/teak_stairs",
    "minecraft:jungle_trapdoor": "afc:wood/planks/teak_trapdoor",
    "minecraft:jungle_wood": "afc:wood/wood/teak",
    "minecraft:lantern": "tfc:metal/lamp/copper",
    "minecraft:lapis_ore": "tfc:ore/lapis_lazuli/dacite",
    "minecraft:light_blue_candle": "tfc:candle/light_blue",
    "minecraft:light_gray_candle": "tfc:candle/light_gray",
    "minecraft:lime_candle": "tfc:candle/lime",
    "minecraft:magenta_candle": "tfc:candle/magenta",
    "minecraft:mangrove_boat": "tfc:wood/boat/mangrove",
    "minecraft:mangrove_button": "tfc:wood/planks/mangrove_button",
    "minecraft:mangrove_chest_boat": "tfc:wood/boat/mangrove",
    "minecraft:mangrove_door": "tfc:wood/planks/mangrove_door",
    "minecraft:mangrove_fence": "tfc:wood/planks/mangrove_fence",
    "minecraft:mangrove_fence_gate": "tfc:wood/planks/mangrove_fence_gate",
    "minecraft:mangrove_hanging_sign": "tfc:wood/copper/hanging_sign/mangrove",
    "minecraft:mangrove_leaves": "tfc:wood/leaves/mangrove",
    "minecraft:mangrove_log": "tfc:wood/log/mangrove",
    "minecraft:mangrove_planks": "tfc:wood/planks/mangrove",
    "minecraft:mangrove_pressure_plate": "tfc:wood/planks/mangrove_pressure_plate",
    "minecraft:mangrove_propagule": "tfc:wood/sapling/mangrove",
    "minecraft:mangrove_sign": "tfc:wood/sign/mangrove",
    "minecraft:mangrove_slab": "tfc:wood/planks/mangrove_slab",
    "minecraft:mangrove_stairs": "tfc:wood/planks/mangrove_stairs",
    "minecraft:mangrove_trapdoor": "tfc:wood/planks/mangrove_trapdoor",
    "minecraft:mangrove_wood": "tfc:wood/wood/mangrove",
    "minecraft:mossy_cobblestone": "tfc:rock/mossy_bricks/dacite",
    "minecraft:mossy_cobblestone_slab": "tfc:rock/mossy_bricks/dacite_slab",
    "minecraft:mossy_cobblestone_stairs": "tfc:rock/mossy_bricks/dacite_stairs",
    "minecraft:mossy_cobblestone_wall": "tfc:rock/mossy_bricks/dacite_wall",
    "minecraft:mossy_stone_brick_slab": "tfc:rock/mossy_bricks/dacite_slab",
    "minecraft:mossy_stone_brick_stairs": "tfc:rock/mossy_bricks/dacite_stairs",
    "minecraft:mossy_stone_brick_wall": "tfc:rock/mossy_bricks/dacite_wall",
    "minecraft:mossy_stone_bricks": "tfc:rock/mossy_bricks/dacite",
    "minecraft:mud": "tfc:mud/sandy_loam",
    "minecraft:packed_mud": "tfc:smooth_mud_bricks",
    "minecraft:mud_bricks": "tfc:mud_bricks/sandy_loam",
    "minecraft:mud_brick_stairs": "tfc:mud_bricks/sandy_loam_stairs",
    "minecraft:mud_brick_slab": "tfc:mud_bricks/sandy_loam_slab",
    "minecraft:mud_brick_wall": "tfc:mud_bricks/sandy_loam_wall",
    "minecraft:nautilus_shell": "firmalife:hollow_shell",
    "minecraft:oak_boat": "tfc:wood/boat/oak",
    "minecraft:oak_button": "tfc:wood/planks/oak_button",
    "minecraft:oak_chest_boat": "tfc:wood/boat/oak",
    "minecraft:oak_door": "tfc:wood/planks/oak_door",
    "minecraft:oak_fence": "tfc:wood/planks/oak_fence",
    "minecraft:oak_fence_gate": "tfc:wood/planks/oak_fence_gate",
    "minecraft:oak_hanging_sign": "tfc:wood/copper/hanging_sign/oak",
    "minecraft:oak_leaves": "tfc:wood/leaves/oak",
    "minecraft:oak_log": "tfc:wood/log/oak",
    "minecraft:oak_planks": "tfc:wood/planks/oak",
    "minecraft:oak_pressure_plate": "tfc:wood/planks/oak_pressure_plate",
    "minecraft:oak_sapling": "tfc:wood/sapling/oak",
    "minecraft:oak_sign": "tfc:wood/sign/oak",
    "minecraft:oak_slab": "tfc:wood/planks/oak_slab",
    "minecraft:oak_stairs": "tfc:wood/planks/oak_stairs",
    "minecraft:oak_trapdoor": "tfc:wood/planks/oak_trapdoor",
    "minecraft:oak_wood": "tfc:wood/wood/oak",
    "minecraft:orange_candle": "tfc:candle/orange",
    "minecraft:petrified_oak_slab": "tfc:wood/planks/oak_slab",
    "minecraft:pink_candle": "tfc:candle/pink",
    "minecraft:podzol": "tfc:rooted_dirt/loam",
    "minecraft:polished_andesite": "tfc:rock/smooth/andesite",
    "minecraft:polished_andesite_slab": "tfc:rock/smooth/andesite_slab",
    "minecraft:polished_andesite_stairs": "tfc:rock/smooth/andesite_stairs",
    "minecraft:polished_deepslate": "tfc:rock/smooth/shale",
    "minecraft:polished_deepslate_slab": "tfc:rock/smooth/shale_slab",
    "minecraft:polished_deepslate_stairs": "tfc:rock/smooth/shale_stairs",
    "minecraft:polished_deepslate_wall": "tfc:rock/smooth/shale_wall",
    "minecraft:polished_diorite": "tfc:rock/smooth/diorite",
    "minecraft:polished_diorite_slab": "tfc:rock/smooth/diorite_slab",
    "minecraft:polished_diorite_stairs": "tfc:rock/smooth/diorite_stairs",
    "minecraft:polished_granite": "tfc:rock/smooth/granite",
    "minecraft:polished_granite_slab": "tfc:rock/smooth/granite_slab",
    "minecraft:polished_granite_stairs": "tfc:rock/smooth/granite_stairs",
    "minecraft:red_candle": "tfc:candle/red",
    "minecraft:red_sand": "tfc:sand/red",
    "minecraft:red_sandstone": "tfc:raw_sandstone/red",
    "minecraft:red_sandstone_slab": "tfc:raw_sandstone/red_slab",
    "minecraft:red_sandstone_stairs": "tfc:raw_sandstone/red_stairs",
    "minecraft:red_sandstone_wall": "tfc:raw_sandstone/red_wall",
    "minecraft:redstone_ore": "tfc:ore/cryolite/dacite",
    "minecraft:rooted_dirt": "tfc:rooted_dirt/sandy_loam",
    "minecraft:sand": "tfc:sand/yellow",
    "minecraft:sandstone": "tfc:raw_sandstone/yellow",
    "minecraft:sandstone_slab": "tfc:raw_sandstone/yellow_slab",
    "minecraft:sandstone_stairs": "tfc:raw_sandstone/yellow_stairs",
    "minecraft:sandstone_wall": "tfc:raw_sandstone/yellow_wall",
    "minecraft:smooth_red_sandstone": "tfc:smooth_sandstone/red",
    "minecraft:smooth_red_sandstone_slab": "tfc:smooth_sandstone/red_slab",
    "minecraft:smooth_red_sandstone_stairs": "tfc:smooth_sandstone/red_stairs",
    "minecraft:smooth_sandstone": "tfc:smooth_sandstone/yellow",
    "minecraft:smooth_sandstone_slab": "tfc:smooth_sandstone/yellow_slab",
    "minecraft:smooth_sandstone_stairs": "tfc:smooth_sandstone/yellow_stairs",
    "minecraft:smooth_stone": "tfc:rock/smooth/dacite",
    "minecraft:smooth_stone_slab": "tfc:rock/smooth/dacite_slab",
    "minecraft:spruce_boat": "tfc:wood/boat/spruce",
    "minecraft:spruce_button": "tfc:wood/planks/spruce_button",
    "minecraft:spruce_chest_boat": "tfc:wood/boat/spruce",
    "minecraft:spruce_door": "tfc:wood/planks/spruce_door",
    "minecraft:spruce_fence": "tfc:wood/planks/spruce_fence",
    "minecraft:spruce_fence_gate": "tfc:wood/planks/spruce_fence_gate",
    "minecraft:spruce_hanging_sign": "tfc:wood/copper/hanging_sign/spruce",
    "minecraft:spruce_leaves": "tfc:wood/leaves/spruce",
    "minecraft:spruce_log": "tfc:wood/log/spruce",
    "minecraft:spruce_planks": "tfc:wood/planks/spruce",
    "minecraft:spruce_pressure_plate": "tfc:wood/planks/spruce_pressure_plate",
    "minecraft:spruce_sapling": "tfc:wood/sapling/spruce",
    "minecraft:spruce_sign": "tfc:wood/sign/spruce",
    "minecraft:spruce_slab": "tfc:wood/planks/spruce_slab",
    "minecraft:spruce_stairs": "tfc:wood/planks/spruce_stairs",
    "minecraft:spruce_trapdoor": "tfc:wood/planks/spruce_trapdoor",
    "minecraft:spruce_wood": "tfc:wood/wood/spruce",
    "minecraft:stone": "tfc:rock/raw/dacite",
    "minecraft:stone_brick_slab": "tfc:rock/bricks/dacite_slab",
    "minecraft:stone_brick_stairs": "tfc:rock/bricks/dacite_stairs",
    "minecraft:stone_brick_wall": "tfc:rock/bricks/dacite_wall",
    "minecraft:stone_bricks": "tfc:rock/bricks/dacite",
    "minecraft:stone_button": "tfc:rock/button/dacite",
    "minecraft:stone_pressure_plate": "tfc:rock/pressure_plate/dacite",
    "minecraft:stone_slab": "tfc:rock/raw/dacite_slab",
    "minecraft:stone_stairs": "tfc:rock/raw/dacite_stairs",
    "minecraft:stripped_acacia_log": "tfc:wood/stripped_log/acacia",
    "minecraft:stripped_acacia_wood": "tfc:wood/stripped_wood/acacia",
    "minecraft:stripped_birch_log": "tfc:wood/stripped_log/birch",
    "minecraft:stripped_birch_wood": "tfc:wood/stripped_wood/birch",
    "minecraft:stripped_cherry_log": "tfc:wood/stripped_log/kapok",
    "minecraft:stripped_cherry_wood": "tfc:wood/stripped_wood/kapok",
    "minecraft:stripped_dark_oak_log": "afc:wood/stripped_log/cypress",
    "minecraft:stripped_dark_oak_wood": "afc:wood/stripped_wood/cypress",
    "minecraft:stripped_jungle_log": "afc:wood/stripped_log/teak",
    "minecraft:stripped_jungle_wood": "afc:wood/stripped_wood/teak",
    "minecraft:stripped_mangrove_log": "tfc:wood/stripped_log/mangrove",
    "minecraft:stripped_mangrove_wood": "tfc:wood/stripped_wood/mangrove",
    "minecraft:stripped_oak_log": "tfc:wood/stripped_log/oak",
    "minecraft:stripped_oak_wood": "tfc:wood/stripped_wood/oak",
    "minecraft:stripped_spruce_log": "tfc:wood/stripped_log/spruce",
    "minecraft:stripped_spruce_wood": "tfc:wood/stripped_wood/spruce",
    "minecraft:torch": "tfc:torch",
    "minecraft:trapped_chest": "tfc:wood/trapped_chest/birch",
    "minecraft:tube_coral": "tfc:coral/tube_coral",
    "minecraft:tube_coral_fan": "tfc:coral/tube_coral_fan",
    "minecraft:tuff": "tfc:rock/raw/schist",
    "minecraft:yellow_candle": "tfc:candle/yellow_candle",
    "minecraft:mangrove_roots": "tfc:tree_roots",
    "minecraft:muddy_mangrove_roots": "tfc:muddy_roots/loam",
    "minecraft:grass": "tfc:plant/bromegrass",
    "minecraft:fern": "tfc:plant/lady_fern",
    "minecraft:dead_bush": "tfc:plant/dead_bush",
    "minecraft:seagrass": "tfc:plant/eel_grass",
    "minecraft:tall_seagrass": "tfc:plant/sago",
    "minecraft:dandelion": "tfc:plant/dandelion",
    "minecraft:poppy": "tfc:plant/poppy",
    "minecraft:blue_orchid": "tfc:plant/blue_orchid",
    "minecraft:allium": "tfc:plant/allium",
    "minecraft:azure_bluet": "tfc:plant/houstonia",
    "minecraft:red_tulip": "tfc:plant/tulip_red",
    "minecraft:orange_tulip": "tfc:plant/tulip_orange",
    "minecraft:white_tulip": "tfc:plant/tulip_white",
    "minecraft:pink_tulip": "tfc:plant/tulip_pink",
    "minecraft:oxeye_daisy": "tfc:plant/oxeye_daisy",
    "minecraft:cornflower": "tfc:plant/blue_ginger",
    "minecraft:wither_rose": "tfc:plant/black_orchid",
    "minecraft:lily_of_the_valley": "tfc:plant/lily_of_the_valley",
    "minecraft:bookshelf": "tfc:wood/planks/oak_bookshelf",
    "minecraft:chiseled_bookshelf": "tfc:wood/planks/oak_bookshelf",
    "minecraft:wall_torch": "tfc:wall_torch",
    "minecraft:wheat": "tfc:crop/wheat",
    "minecraft:farmland": "tfc:farmland/loam",
    "minecraft:oak_wall_sign": "tfc:wood/planks/oak_wall_sign",
    "minecraft:spruce_wall_sign": "tfc:wood/planks/spruce_wall_sign",
    "minecraft:birch_wall_sign": "tfc:wood/planks/birch_wall_sign",
    "minecraft:acacia_wall_sign": "tfc:wood/planks/acacia_wall_sign",
    "minecraft:cherry_wall_sign": "tfc:wood/planks/kapok_wall_sign",
    "minecraft:jungle_wall_sign": "afc:wood/planks/teak_wall_sign",
    "minecraft:dark_oak_wall_sign": "afc:wood/planks/cypress_wall_sign",
    "minecraft:mangrove_wall_sign": "tfc:wood/planks/mangrove_wall_sign",
    "minecraft:crimson_hanging_sign": "beneath:wood/planks/wall_hanging_sign/copper/crimson",
    "minecraft:warped_hanging_sign": "beneath:wood/planks/wall_hanging_sign/copper/warped",
    "minecraft:oak_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/oak",
    "minecraft:spruce_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/spruce",
    "minecraft:birch_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/birch",
    "minecraft:acacia_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/acacia",
    "minecraft:cherry_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/kapok",
    "minecraft:jungle_wall_hanging_sign": "afc:wood/planks/wall_hanging_sign/copper/teak",
    "minecraft:dark_oak_wall_hanging_sign": "afc:wood/planks/wall_hanging_sign/copper/cypress",
    "minecraft:mangrove_wall_hanging_sign": "tfc:wood/planks/wall_hanging_sign/copper/mangrove",
    "minecraft:crimson_wall_hanging_sign": "beneath:wood/planks/wall_hanging_sign/copper/crimson",
    "minecraft:warped_wall_hanging_sign": "beneath:wood/planks/wall_hanging_sign/copper/warped",
    "minecraft:sugar_cane": "tfc:crop/sugarcane",
    "minecraft:pumpkin": "tfc:pumpkin",
    "minecraft:soul_torch": "tfc:torch",
    "minecraft:soul_wall_torch": "tfc:wall_torch",
    "minecraft:cake": "tfc:cake",
    "minecraft:chain": "tfc:metal/chain/black_bronze",
    "minecraft:melon": "tfc:melon",
    "minecraft:attached_pumpkin_stem": "tfc:crop/pumpkin",
    "minecraft:attached_melon_stem": "tfc:crop/melon",
    "minecraft:pumpkin_stem": "tfc:crop/pumpkin",
    "minecraft:melon_stem": "tfc:crop/melon",
    "minecraft:vine": "tfc:plant/jungle_vines",
    "minecraft:glow_lichen": "tfc:plant/reindeer_lichen",
    "minecraft:mycelium": "tfc:dirt/silt",
    "minecraft:cocoa": "minecraft:air",
    "minecraft:potted_torchflower": "tfc:plant/potted/olive_sapling",
    "minecraft:potted_oak_sapling": "tfc:plant/potted/green_apple_sapling",
    "minecraft:potted_spruce_sapling": "tfc:plant/potted/lemon_sapling",
    "minecraft:potted_birch_sapling": "tfc:plant/potted/olive_sapling",
    "minecraft:potted_jungle_sapling": "tfc:plant/potted/orange_sapling",
    "minecraft:potted_acacia_sapling": "tfc:plant/potted/banana_sapling",
    "minecraft:potted_cherry_sapling": "tfc:plant/potted/cherry_sapling",
    "minecraft:potted_dark_oak_sapling": "tfc:plant/potted/peach_sapling",
    "minecraft:potted_mangrove_propagule": "tfc:plant/potted/red_apple_sapling",
    "minecraft:potted_fern": "tfc:plant/potted/lady_fern",
    "minecraft:potted_dandelion": "tfc:plant/potted/dandelion",
    "minecraft:potted_poppy": "tfc:plant/potted/poppy",
    "minecraft:potted_blue_orchid": "tfc:plant/potted/blue_orchid",
    "minecraft:potted_allium": "tfc:plant/potted/allium",
    "minecraft:potted_azure_bluet": "tfc:plant/potted/houstonia",
    "minecraft:potted_red_tulip": "tfc:plant/potted/tulip_red",
    "minecraft:potted_orange_tulip": "tfc:plant/potted/tulip_orange",
    "minecraft:potted_white_tulip": "tfc:plant/potted/tulip_white",
    "minecraft:potted_pink_tulip": "tfc:plant/potted/tulip_pink",
    "minecraft:potted_oxeye_daisy": "tfc:plant/potted/oxeye_daisy",
    "minecraft:potted_cornflower": "tfc:plant/potted/blue_ginger",
    "minecraft:potted_lily_of_the_valley": "tfc:plant/potted/lily_of_the_valley",
    "minecraft:potted_wither_rose": "tfc:plant/potted/black_orchid",
    "minecraft:potted_dead_bush": "tfc:plant/potted/dead_bush",
    "minecraft:carrots": "tfc:crop/carrot",
    "minecraft:potatoes": "tfc:crop/potato",
    "minecraft:sunflower": "tfc:plant/calendula",
    "minecraft:lilac": "tfc:plant/lilac",
    "minecraft:tall_grass": "tfc:plant/tall_fescue_grass",
    "minecraft:large_fern": "tfc:plant/sword_fern",
    "minecraft:beetroots": "tfc:crop/beet",
    "minecraft:kelp": "tfc:plant/leafy_kelp_plant",
    "minecraft:kelp_plant": "tfc:plant/leafy_kelp_plant",
    "minecraft:sea_pickle": "tfc:sea_pickle",
    "minecraft:composter": "tfc:composter",
    "minecraft:beehive": "firmalife:beehive",
    "minecraft:candle": "tfc:candle",
    "minecraft:white_candle": "tfc:candle/white_candle",
    "minecraft:purple_candle": "tfc:candle/purple_candle",
    "minecraft:candle_cake": "tfc:candle_cake",
    "minecraft:white_candle_cake": "tfc:candle_cake/white",
    "minecraft:orange_candle_cake": "tfc:candle_cake/orange",
    "minecraft:magenta_candle_cake": "tfc:candle_cake/magenta",
    "minecraft:light_blue_candle_cake": "tfc:candle_cake/light_blue",
    "minecraft:yellow_candle_cake": "tfc:candle_cake/yellow",
    "minecraft:lime_candle_cake": "tfc:candle_cake/lime",
    "minecraft:pink_candle_cake": "tfc:candle_cake/pink",
    "minecraft:gray_candle_cake": "tfc:candle_cake/gray",
    "minecraft:light_gray_candle_cake": "tfc:candle_cake/light_gray",
    "minecraft:cyan_candle_cake": "tfc:candle_cake/cyan",
    "minecraft:purple_candle_cake": "tfc:candle_cake/purple",
    "minecraft:blue_candle_cake": "tfc:candle_cake/blue",
    "minecraft:brown_candle_cake": "tfc:candle_cake/brown",
    "minecraft:green_candle_cake": "tfc:candle_cake/green",
    "minecraft:red_candle_cake": "tfc:candle_cake/red",
    "minecraft:black_candle_cake": "tfc:candle_cake/black",
    "minecraft:moss_carpet": "tfc:plant/moss",
    "minecraft:pink_petals": "tfc:plant/maiden_pink"
};
//Code Curtosey of arguz on the TFC Discord
  MoreJSEvents.structureLoad((event) => {
    event.forEachPalettes((palette) => {
        palette.forEach((blockData) => {
            if (blockData != null) {
                const tfc_block_id = MINECRAFT_TO_TFC_MAPS[blockData.id]
                if (tfc_block_id)
                    blockData.setBlock(tfc_block_id, blockData.properties);
            }
        });
    });
});  