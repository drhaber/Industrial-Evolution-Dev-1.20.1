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

import stdlib.List;

loot.modifiers.register(
    "village_toolsmith_fire_clay",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_toolsmith>)),
    CommonLootModifiers.addWithChance(<item:tfc:fire_clay> * 5 % 75)
);
loot.modifiers.register(
    "village_weaponsmith_fire_clay",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_weaponsmith>)),
    CommonLootModifiers.addWithChance(<item:tfc:fire_clay> * 5 % 75)
);

loot.modifiers.register(
    "illager_mansion_smithing_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/smithing_room>)),
    CommonLootModifiers.add(<item:tfc:ceramic/unfired_crucible>)
);

loot.modifiers.register("bye_stone_pickaxe", 
    LootConditions.none(), 
    CommonLootModifiers.replaceStackWith(<item:minecraft:stone_pickaxe>,<item:tfc:metal/pickaxe_head/copper>)
);