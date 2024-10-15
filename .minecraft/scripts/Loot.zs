import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.DamageSourceLootCondition;
import crafttweaker.api.predicate.DamageSourcePredicate;
import crafttweaker.api.loot.condition.KilledByPlayerLootCondition;
import crafttweaker.api.loot.condition.WeatherCheckLootCondition;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.predicate.EntityPredicate;
import crafttweaker.api.predicate.EntityEquipmentPredicate;
import crafttweaker.api.predicate.ItemPredicate;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;

import stdlib.List;

<entitytype:aether:aerbunny>.addLootModifier("drop_rabbit_foot", CommonLootModifiers.addWithChance(<item:minecraft:rabbit_foot> % 25));

loot.modifiers.register(
    "village_toolsmith_fire_clay",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_toolsmith>)),
    CommonLootModifiers.addWithRandomAmount(<item:tfc:fire_clay>, 1, 5)
);
loot.modifiers.register(
    "village_weaponsmith_fire_clay",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_weaponsmith>)),
    CommonLootModifiers.addWithRandomAmount(<item:tfc:fire_clay>, 1, 7)
);

loot.modifiers.register(
    "illager_mansion_smithing_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/smithing_room>)),
    CommonLootModifiers.add(<item:tfc:ceramic/unfired_crucible>)
);

function replaceLootItems(ItemWas as IItemStack, ItemIs as IItemStack) as void { 
loot.modifiers.register("bye_" + ItemWas.descriptionId + ItemIs.descriptionId,
    LootConditions.none(), 
    CommonLootModifiers.replaceStackWith(ItemWas,ItemIs)
);
}

replaceLootItems(<item:minecraft:stone_shovel>,<item:tfc:ceramic/shovel_head_mold>);
replaceLootItems(<item:minecraft:stone_pickaxe>,<item:tfc:ceramic/pickaxe_head_mold>);
replaceLootItems(<item:minecraft:stone_axe>,<item:tfc:ceramic/axe_head_mold>);
replaceLootItems(<item:minecraft:stone_hoe>,<item:tfc:ceramic/hoe_head_mold>);
replaceLootItems(<item:minecraft:stone_sword>,<item:tfc:ceramic/knife_blade_mold>);

replaceLootItems(<item:minecraft:iron_shovel>,<item:tfc:metal/shovel_head/copper>);
replaceLootItems(<item:minecraft:iron_pickaxe>,<item:tfc:metal/pickaxe_head/copper>);
replaceLootItems(<item:minecraft:iron_axe>,<item:tfc:metal/axe_head/copper>);
replaceLootItems(<item:minecraft:iron_hoe>,<item:tfc:metal/hoe_head/copper>);
replaceLootItems(<item:minecraft:iron_sword>,<item:tfc:metal/knife_blade/copper>);

replaceLootItems(<item:iceandfire:silver_ingot>,<item:tfc:metal/ingot/silver>);
replaceLootItems(<item:minecraft:gold_ingot>,<item:tfc:metal/ingot/gold>);
