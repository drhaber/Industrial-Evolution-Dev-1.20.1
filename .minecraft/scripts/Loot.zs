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
    "village_toolsmith_fire_clay",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_weaponsmith>)),
    CommonLootModifiers.addWithChance(<item:tfc:fire_clay> * 5 % 75)
);