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

event.remove('forge:plates/brass','tfc:metal/sheet/brass')
event.remove('forge:plates/copper','tfc:metal/sheet/copper')
event.remove('forge:plates/gold','tfc:metal/sheet/gold')
event.remove('forge:plates/iron','tfc:metal/sheet/wrought_iron')
event.remove('railways:internal/plates/iron_plates','tfc:metal/sheet/wrought_iron')
event.remove('ad_astra_platform:iron_plates','tfc:metal/sheet/wrought_iron')
event.remove('forge:plates/obsidian','tfc:metal/sheet/steel')

event.add('forge:storage_blocks/bronze', '#forge:storage_blocks/strong_bronze')
event.add('forge:ingots/bronze', '#forge:ingots/strong_bronze')
event.add('forge:nuggets/bronze', '#forge:nuggets/strong_bronze')
event.add('forge:plates/bronze', '#forge:plates/strong_bronze')
event.add(`map_atlases:sticky_crafting_items`,`#forge:dough`)

event.add(`twilightforest:portal/activator`,`#forge:gems`)

//event.add('tfc:pileable_ingots', 'sgjourney:naquadah_alloy')
//event.add(`tfc:pileable_ingots`,`#forge:ingots`)
})

ServerEvents.tags('block', event => {
event.add("minecraft:dirt",["#tfc:grass","#tfc:dirt"])
})

ServerEvents.tags("worldgen/biome", (event) => {
    event.add("tfc:overworld", ["tfc:badlands","tfc:canyons","tfc:deep_ocean","tfc:deep_ocean_trench","tfc:highlands","tfc:hills","tfc:inverted_badlands","tfc:lake","tfc:low_canyons","tfc:lowlands","tfc:mountain_lake","tfc:mountains","tfc:ocean","tfc:ocean_reef","tfc:oceanic_mountain_lake","tfc:oceanic_mountains","tfc:old_mountain_lake","tfc:old_mountains","tfc:plains","tfc:plateau","tfc:plateau_lake","tfc:river","tfc:rolling_hills","tfc:salt_marsh","tfc:shore","tfc:tidal_flats","tfc:volcanic_mountain_lake","tfc:volcanic_mountains","tfc:volcanic_oceanic_mountain_lak","tfc:volcanic_oceanic_mountains"])
    event.add("minecraft:is_overworld", ["#tfc:overworld"])
    event.add("minecraft:is_badlands", ["tfc:inverted_badlands", "tfc:badlands"])
    event.add("minecraft:is_beach", ["tfc:shore", "tfc:tidal_flats"])
    event.add("minecraft:is_deep_ocean", ["tfc:deep_ocean_trench", "tfc:deep_ocean"])
    event.add("minecraft:is_hill", ["tfc:rolling_hills", "tfc:hills"])
    event.add("minecraft:is_mountain", ["tfc:volcanic_oceanic_mountains","tfc:old_mountains","tfc:volcanic_mountains","tfc:mountains","tfc:oceanic_mountains","tfc:highlands"])
    event.add("minecraft:is_ocean", ["tfc:ocean", "tfc:ocean_reef"])
    event.add("minecraft:is_river", ["tfc:river"])
    event.add("minecraft:is_lake", ["tfc:volcanic_mountain_lake","tfc:volcanic_oceanic_mountain_lake","tfc:oceanic_mountain_lake","tfc:mountain_lake","tfc:plateau_lake","tfc:lake","tfc:old_mountain_lake"])
    event.add("minecraft:is_savanna", ["tfc:plains", "tfc:plateau"])
    event.add("minecraft:is_lowland", ["tfc:lowlands", "tfc:low_canyons"])
//Tag adds "Stolen" From Below
//https://github.com/AllTheMods/Gravitas2/blob/main/kubejs/server_scripts/tags/worldgen_biomes.js
    event.add("createpickywheels:picky_waterwheels", ["tfc:river"])
    event.add("createpickywheels:picky_windmills", ["#twilightforest:in_twilight_forest","#aether:is_aether"])
    event.add("botania:mystical_flower_spawnlist",["#tfc:overworld","#twilightforest:in_twilight_forest","#aether:is_aether"])
    event.add("sgjourney:has_structure/terra_stargate_biomes",["#tfc:overworld"])
    event.add("sgjourney:has_structure/buried_stargate/buried_stargate_biomes",["#tfc:overworld"])
    event.add("ftbessentials:ignore_rtp",["tfc:ocean","tfc:ocean_reef","tfc:deep_ocean","tfc:deep_ocean_trench"])
    event.add("creeperoverhaul:where_creepers_spawn",["#tfc:overworld","#twilightforest:in_twilight_forest"])
    event.add("endermanoverhaul:cave_spawns",["#tfc:overworld"])
    event.add("endermanoverhaul:badlands_spawns",["tfc:badlands","tfc:inverted_badlands"])
    event.add("endermanoverhaul:coral_spawns",["tfc:ocean_reef"])
    event.add("endermanoverhaul:dark_oak_spawns",["twilightforest:dark_forest"])
    event.add("endermanoverhaul:ice_spikes_spawns",["twilightforest:glacier"])
    event.add("endermanoverhaul:mushroom_fields_spawns",["twilightforest:mushroom_forest"])
    event.add("endermanoverhaul:savanna_spawns", ["tfc:plains", "tfc:plateau"])
    event.add("endermanoverhaul:snowy_spawns",["twilightforest:glacier","twilightforest:snowy_forest"])
    event.add("endermanoverhaul:windswept_hills_spawns",["aether:skyroot_meadow"])
    //endermanoverhaul:flower_fields_spawns

    event.add("ad_astra:has_structure/meteor_biomes", ["#twilightforest:in_twilight_forest"])
    event.add("ad_astra:has_structure/oil_well_biomes", ["sgjourney:abydos_desert"])
    event.add("additionalstructures:as_custom",["#tfc:overworld"])
    event.add("aether:mycelium_conversion",["twilightforest:mushroom_forest"])
    event.add("aether:no_wheat_seeds",["#tfc:overworld","#twilightforest:in_twilight_forest"])
    event.add("aether:podzol_conversion",["twilightforest:dark_forest"])
    event.add("betterdeserttemples:has_structure/better_desert_temple",["tfc:inverted_badlands"])
    event.add("betteroceanmonuments:has_structure/better_ocean_monument",["tfc:deep_ocean","tfc:deep_ocean_trench"])
    event.add("betterstrongholds:has_structure/better_stronghold",["#tfc:overworld"])
    event.add("betterwitchhuts:has_structure/better_witch_hut",["tfc:lowlands"])
    event.add("betterwitchhuts:has_structure/witch_circle",["tfc:lowlands"])

    event.add("iceandfire:has_structure/graveyard",["tfc:ocean","tfc:ocean_reef","tfc:deep_ocean","tfc:deep_ocean_trench"])
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