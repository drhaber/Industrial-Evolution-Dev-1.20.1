

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jeitweaker.Jei;






craftingTable.remove(<item:sgjourney:classic_stargate_ring_block>);
craftingTable.addShaped("handcrafted_classic_stargate_ring_block", <item:sgjourney:classic_stargate_ring_block>,[
    [<item:sgjourney:naquadah_alloy>,<item:sgjourney:naquadah_alloy>,<item:sgjourney:naquadah_alloy>],
    [<item:immersiveengineering:coil_hv>,<item:immersiveengineering:coil_hv>,<item:immersiveengineering:coil_hv>],
    [<item:sgjourney:naquadah_alloy>,<item:sgjourney:naquadah_alloy>,<item:sgjourney:naquadah_alloy>]]);  

craftingTable.remove(<item:sgjourney:classic_stargate_chevron_block>);
craftingTable.addShaped("handcrafted_classic_stargate_chevron_block", <item:sgjourney:classic_stargate_chevron_block>,[
    [<item:create:rose_quartz_lamp>,<item:sgjourney:large_control_crystal>,<item:create:rose_quartz_lamp>],
    [<item:sgjourney:memory_crystal>,<item:create:rose_quartz_lamp>,<item:sgjourney:communication_crystal>],
    [<item:minecraft:air>,<item:sgjourney:classic_stargate_ring_block>,<item:minecraft:air>]]);  

craftingTable.remove(<item:sgjourney:classic_stargate_base_block>);
craftingTable.addShaped("handcrafted_classic_stargate_base_block", <item:sgjourney:classic_stargate_base_block>,[
    [<item:sgjourney:energy_crystal>,<item:sgjourney:classic_stargate_ring_block>,<item:sgjourney:communication_crystal>],
    [<item:sgjourney:classic_stargate_ring_block>,<item:sgjourney:transfer_crystal>,<item:sgjourney:classic_stargate_ring_block>],
    [<item:sgjourney:materialization_crystal>,<item:sgjourney:classic_stargate_ring_block>,<item:sgjourney:memory_crystal>]]);  


craftingTable.remove(<item:sgjourney:reaction_chamber>);
<recipetype:create:mechanical_crafting>.addJsonRecipe("reaction_chamber_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "A": { 
      "item": "embers:archaic_bricks"
    },
    "C": {
      "item": "immersiveengineering:concrete_leaded"
    },
    "B": {
      "item": "immersiveengineering:blastbrick_reinforced"
    },
    "N": {
    "item": "sgjourney:pure_naquadah"
    }
  },
  "pattern": [
    "AAAAAAA",
    "ACCCCCA",
    "ACBBBCA",
    "ACBNBCA",
    "ACBBBCA",
    "ACCCCCA",
    "AAAAAAA"
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:reaction_chamber"
  }
});  

<recipetype:create:mechanical_crafting>.addJsonRecipe("universe_stargate_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "R": { 
      "item": "sgjourney:classic_stargate_ring_block"
    },
    "C": {
      "item": "sgjourney:classic_stargate_chevron_block"
    },
    "U": {
      "item": "sgjourney:classic_stargate_base_block"
    },
    "S": {
    "item": "tfc:metal/sheet/black_steel"
    }
  },
  "pattern": [
    "  RRCRR  ",
    " CSSSSSC ",
    "RS     SR",
    "RS     SR",
    "CS  U  SC",
    "RS     SR",
    "RS     SR",
    " CSSSSSC ",
    "  RCRCR  "
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:universe_stargate"
  }
});  
<recipetype:create:mechanical_crafting>.addJsonRecipe("milky_way_stargate_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "R": { 
      "item": "sgjourney:classic_stargate_ring_block"
    },
    "C": {
      "item": "sgjourney:classic_stargate_chevron_block"
    },
    "U": {
      "item": "sgjourney:classic_stargate_base_block"
    },
    "S": {
    "item": "tfc:metal/sheet/steel"
    }
  },
  "pattern": [
    "  RRCRR  ",
    " CSSSSSC ",
    "RS     SR",
    "RS     SR",
    "CS  U  SC",
    "RS     SR",
    "RS     SR",
    " CSSSSSC ",
    "  RCRCR  "
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:milky_way_stargate"
  }
});  
<recipetype:create:mechanical_crafting>.addJsonRecipe("pegasus_stargate_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "R": { 
      "item": "sgjourney:classic_stargate_ring_block"
    },
    "C": {
      "item": "sgjourney:classic_stargate_chevron_block"
    },
    "U": {
      "item": "sgjourney:classic_stargate_base_block"
    },
    "S": {
    "item": "tfc:metal/sheet/blue_steel"
    }
  },
  "pattern": [
    "  RRCRR  ",
    " CSSSSSC ",
    "RS     SR",
    "RS     SR",
    "CS  U  SC",
    "RS     SR",
    "RS     SR",
    " CSSSSSC ",
    "  RCRCR  "
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:pegasus_stargate"
  }
});
<recipetype:create:mechanical_crafting>.addJsonRecipe("classic_stargate_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "R": { 
      "item": "sgjourney:classic_stargate_ring_block"
    },
    "C": {
      "item": "sgjourney:classic_stargate_chevron_block"
    },
    "U": {
      "item": "sgjourney:classic_stargate_base_block"
    },
    "S": {
    "item": "tfc:metal/sheet/red_steel"
    }
  },
  "pattern": [
    "  RRCRR  ",
    " CSSSSSC ",
    "RS     SR",
    "RS     SR",
    "CS  U  SC",
    "RS     SR",
    "RS     SR",
    " CSSSSSC ",
    "  RCRCR  "
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:classic_stargate"
  }
});
<recipetype:create:mechanical_crafting>.addJsonRecipe("tollan_stargate_mechanical_crafting", {
  "type": "create:mechanical_crafting",
  "acceptMirrored": false,
  "key": {
    "R": { 
      "item": "sgjourney:classic_stargate_ring_block"
    },
    "C": {
      "item": "sgjourney:classic_stargate_chevron_block"
    },
    "U": {
      "item": "sgjourney:classic_stargate_base_block"
    },
    "S": {
    "item": "firmalife:metal/sheet/stainless_steel"
    }
  },
  "pattern": [
    "  RRCRR  ",
    " CSSSSSC ",
    "RS     SR",
    "RS     SR",
    "CS  U  SC",
    "RS     SR",
    "RS     SR",
    " CSSSSSC ",
    "  RCRCR  "
  ],
  "result": {
    "count": 1,
    "item": "sgjourney:tollan_stargate"
  }
});      