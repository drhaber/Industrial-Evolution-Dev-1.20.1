

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;

craftingTable.remove(<item:botania:apothecary_default>);
craftingTable.addShaped("handcrafted_apothecary_default", <item:botania:apothecary_default>,[
    [<tag:items:tfc:rock/bricks>,<tag:items:botania:petals>,<tag:items:tfc:rock/bricks>],
    [<item:minecraft:air>,<tag:items:tfc:rock/bricks>,<item:minecraft:air>],
    [<tag:items:tfc:rock/bricks>,<tag:items:tfc:rock/bricks>,<tag:items:tfc:rock/bricks>]]);  

craftingTable.remove(<item:botania:apothecary_mossy>);
craftingTable.addShaped("handcrafted_apothecary_mossy", <item:botania:apothecary_mossy>,[
    [<tag:items:tfc:rock/mossy_bricks>,<tag:items:botania:petals>,<tag:items:tfc:rock/mossy_bricks>],
    [<item:minecraft:air>,<tag:items:tfc:rock/mossy_bricks>,<item:minecraft:air>],
    [<tag:items:tfc:rock/mossy_bricks>,<tag:items:tfc:rock/mossy_bricks>,<tag:items:tfc:rock/mossy_bricks>]]);  

craftingTable.remove(<item:botania:mana_spreader>);
craftingTable.addShaped("handcrafted_mana_spreader", <item:botania:mana_spreader>, [
    [<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>],
    [<item:railcraft:gold_electrode>,<tag:items:botania:petals>,<item:aether:golden_ring>],
    [<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>,<tag:items:botania:livingwood_logs>]]);

<recipetype:botania:mana_infusion>.remove(<item:botania:manasteel_ingot>);
<recipetype:botania:mana_infusion>.remove(<item:botania:manasteel_block>);
<recipetype:botania:mana_infusion>.addJsonRecipe("mana_infusion_manasteel_ingot", {
  "type": "botania:mana_infusion",
  "input": {
    "tag": "forge:ingots/cast_iron"
  },
  "mana": 3000,
  "output": {
    "item": "botania:manasteel_ingot"
  }
});    



<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_axe", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_axe"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_second_last",
    "upset_third_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_hoe", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_hoe"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_not_last",
    "bend_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_knife", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_knife"
  },
  "tier": 3,
  "rules": [
    "hit_last",
    "draw_second_last",
    "draw_third_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_pick", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_pick"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "bend_not_last",
    "draw_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_shovel", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_shovel"
  },
  "tier": 3,
  "rules": [
    "punch_last",
    "hit_not_last"
  ]
});

<recipetype:tfc:anvil>.addJsonRecipe("anvil_manasteel_sword", {
  "type": "tfc:anvil",
  "input": {
    "tag": "forge:ingots/manasteel"
  },
  "result": {
    "item": "kubejs:manasteel_sword"
  },
  "tier": 3,
  "rules": [
    "hit_last",
    "bend_second_last",
    "bend_third_last"
  ]
});

craftingTable.remove(<item:botania:manasteel_axe>);
craftingTable.remove(<item:botania:manasteel_hoe>);
craftingTable.remove(<item:botania:manasteel_shears>);
craftingTable.remove(<item:botania:manasteel_pick>);
craftingTable.remove(<item:botania:manasteel_shovel>);
craftingTable.remove(<item:botania:manasteel_sword>);

craftingTable.addShaped("handcrafted_mana_axe", <item:botania:manasteel_axe>,[
    [<item:kubejs:manasteel_axe>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_hoe", <item:botania:manasteel_hoe>,[
    [<item:kubejs:manasteel_hoe>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_pick", <item:botania:manasteel_pick>,[
    [<item:kubejs:manasteel_pick>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_shovel", <item:botania:manasteel_shovel>,[
    [<item:kubejs:manasteel_shovel>],
    [<tag:items:forge:rods/wooden>]]);
craftingTable.addShaped("handcrafted_mana_sword", <item:botania:manasteel_sword>,[
    [<item:kubejs:manasteel_sword>],
    [<tag:items:forge:rods/wooden>]]);

<recipetype:tfc:welding>.addJsonRecipe("weld_manasteel_shears", {
  "type": "tfc:welding",
  "first_input": {
    "item": "kubejs:manasteel_knife"
  },
  "second_input": {
    "item": "kubejs:manasteel_knife"
  },
  "tier": 3,
  "result": {
    "item": "botania:manasteel_shears"
  }
});

<recipetype:botania:runic_altar>.removeAll();

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_air", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "item": "tfc:wool"
    },
    {
      "tag": "forge:feathers"
    },
    {
      "tag": "tfc:fluid_item_ingredient_empty_containers"
    }
  ],
  "mana": 5200,
  "output": {
    "count": 2,
    "item": "botania:rune_air"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_autumn", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "item": "botania:rune_fire"
    },
    {
      "item": "botania:rune_air"
    },
    {
      "tag": "tfc:fallen_leaves"
    },
    {
      "tag": "tfc:fallen_leaves"
    },
    {
      "tag": "tfc:fallen_leaves"
    },
    {
      "item": "tfc:pumpkin"
    }
  ],
  "mana": 8000,
  "output": {
    "item": "botania:rune_autumn"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_earth", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "tag": "tfc:rock/raw"
    },
    {
      "tag": "bsa:rock/loose"
    },
    {
      "tag": "bsa:rock/loose"
    },
    {
      "tag": "forge:mushrooms"
    }
  ],
  "mana": 5200,
  "output": {
    "count": 2,
    "item": "botania:rune_earth"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_envy", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_winter"
    },
    {
      "item": "botania:rune_water"
    },
    {
      "item": "minecraft:weathered_copper"
    }    
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_envy"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_fire", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "tag": "forge:netherrack"
    },
    {
      "tag": "forge:gunpowder"
    },
    {
      "item": "minecraft:fire_charge"
    }
  ],
  "mana": 5200,
  "output": {
    "count": 2,
    "item": "botania:rune_fire"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_gluttony", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "tfc:foods"
    },
    {
      "tag": "tfc:foods"
    },    
    {
      "tag": "tfc:foods"
    },                
    {
      "item": "botania:rune_winter"
    },
    {
      "item": "botania:rune_fire"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_gluttony"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_greed", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_spring"
    },
    {
      "item": "botania:rune_water"
    },
    {
      "tag": "forge:ingots/gold"
    },
    {
      "tag": "forge:gems/emerald"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_greed"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_head", {
  "type": "botania:runic_altar_head",
  "ingredients": [
    {
      "item": "minecraft:skeleton_skull"
    },
    {
      "item": "tombstone:grave_dust"
    },
    {
      "item": "minecraft:name_tag"
    },
    {
      "item": "sgjourney:golden_idol"
    }
  ],
  "mana": 22500,
  "output": {
    "item": "minecraft:player_head"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_lust", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_summer"
    },
    {
      "item": "botania:rune_air"
    },
    {
      "item": "minecraft:lead"
    },   
    {
      "item": "iceandfire:blindfold"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_lust"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_mana", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "item": "botania:quartz_mana"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "item": "botania:mana_pearl"
    },
    {
      "item": "botania:mana_bottle"
    }
  ],
  "mana": 8000,
  "output": {
    "item": "botania:rune_mana"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_pride", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_summer"
    },
    {
      "item": "botania:rune_fire"
    },
    {
      "tag": "forge:dyes/red"
    },
    {
      "tag": "forge:dyes/orange"
    },   
    {
      "tag": "forge:dyes/yellow"
    },
    {
      "tag": "forge:dyes/green"
    },
    {
      "tag": "forge:dyes/blue"
    },
    {
      "tag": "forge:dyes/purple"
    },
    {
      "tag": "forge:dyes/pink"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_pride"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_sloth", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_autumn"
    },
    {
      "item": "botania:rune_air"
    },
    {
      "tag": "minecraft:beds"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_sloth"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_spring", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "item": "botania:rune_water"
    },
    {
      "item": "botania:rune_fire"
    },
    {
      "tag": "minecraft:saplings"
    },
    {
      "tag": "minecraft:saplings"
    },
    {
      "tag": "items:forge:eggs"
    },
    {
      "tag": "minecraft:flowers"
    }
  ],
  "mana": 8000,
  "output": {
    "item": "botania:rune_spring"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_summer", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "item": "botania:rune_earth"
    },
    {
      "item": "botania:rune_air"
    },
    {
      "tag": "minecraft:sand"
    },
    {
      "tag": "minecraft:sand"
    },
    {
      "tag": "tfc:foods/usable_in_salad"
    },
    {
      "tag": "items:tfc:foods/fruits"
    }
  ],
  "mana": 8000,
  "output": {
    "item": "botania:rune_summer"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_water", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "botania:manasteel_ingots"
    },
    {
      "item": "firmalife:watering_can"
    },
        [
      {
        "item": "minecraft:dried_kelp"
      },
      {
        "item": "minecraft:kelp"
      },
      {
        "item": "tfc:plant/leafy_kelp"
      },
      {
        "item": "tfc:plant/winged_kelp"
      },
      {
        "item": "tfc:plant/giant_kelp_flower"
      }
    ]
  ],
  "mana": 5200,
  "output": {
    "count": 2,
    "item": "botania:rune_water"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_winter", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "item": "botania:rune_water"
    },
    {
      "item": "botania:rune_earth"
    },
    {
      "item": "minecraft:snow_block"
    },
    {
      "item": "minecraft:snow_block"
    },
    {
      "tag": "minecraft:wool"
    },
    {
      "tag": "minecraft:wool"
    },
    {
      "tag": "supplementaries:presents"
    }   
  ],
  "mana": 8000,
  "output": {
    "item": "botania:rune_winter"
  }
});

<recipetype:botania:runic_altar>.addJsonRecipe("runic_altar_rune_wrath", {
  "type": "botania:runic_altar",
  "ingredients": [
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "tag": "botania:mana_diamond_gems"
    },
    {
      "item": "botania:rune_winter"
    },
    {
      "item": "botania:rune_earth"
    },
    {
      "tag": "tfc:javelins"
    },
    {
      "tag": "tfc:swords"
    },
    {
      "item": "botania:cosmetic_eyepatch"
    }
  ],
  "mana": 12000,
  "output": {
    "item": "botania:rune_wrath"
  }
});
