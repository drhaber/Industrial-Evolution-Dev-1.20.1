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

//event.add('tfc:pileable_ingots', 'sgjourney:naquadah_alloy')
//event.add(`tfc:pileable_ingots`,`#forge:ingots`)
})

ServerEvents.tags('block', event => {
event.add("minecraft:dirt",["#tfc:grass","#tfc:dirt"])
})

ServerEvents.tags("worldgen/biome", (event) => {
    event.add("tfc:overworld", ["tfc:badlands","tfc:canyons","tfc:deep_ocean","tfc:deep_ocean_trench","tfc:highlands","tfc:hills","tfc:inverted_badlands","tfc:lake","tfc:low_canyons","tfc:lowlands","tfc:mountain_lake","tfc:mountains","tfc:ocean","tfc:ocean_reef","tfc:oceanic_mountain_lake","tfc:oceanic_mountains","tfc:old_mountain_lake","tfc:old_mountains","tfc:plains","tfc:plateau","tfc:plateau_lake","tfc:river","tfc:rolling_hills","tfc:salt_marsh","tfc:shore","tfc:tidal_flats","tfc:volcanic_mountain_lake","tfc:volcanic_mountains","tfc:volcanic_oceanic_mountain_lak","tfc:volcanic_oceanic_mountains"])
    event.add("createpickywheels:picky_waterwheels", ["tfc:river"])
    event.add("createpickywheels:picky_windmills", ["#twilightforest:in_twilight_forest","#tfc:overworld"])
    event.add("botania:mystical_flower_spawnlist",["#tfc:overworld"])
})
BlockEvents.rightClicked(event => {
    let item = event.item
    let block = event.block
    if (item.hasTag("tfc:axes_that_log") && block.hasTag('minecraft:logs') && !block.hasTag('forge:stripped_logs')) {
    block.popItem('farmersdelight:tree_bark')
    }
  })