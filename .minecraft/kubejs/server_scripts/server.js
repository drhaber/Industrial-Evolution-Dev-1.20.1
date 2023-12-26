// priority: 0

// Visit the wiki for more info - https://kubejs.com/


TFCEvents.data(event => {
    event.knappingType('embers:caminite_blend', 2, 1, 'tfc:item.knapping.clay', false, true, true, 'embers:caminite_blend', 'kubejs:caminite')
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
})

BlockEvents.rightClicked(event => {
    let item = event.item
    let block = event.block
    if (item.hasTag("tfc:axes_that_log") && block.hasTag('minecraft:logs') && !block.hasTag('forge:stripped_logs')) {
    block.popItem('farmersdelight:tree_bark')
    }
  })