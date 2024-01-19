// priority: 0

StartupEvents.registry('item', e => {

//iron_chloride
e.create('iron_chloride').displayName('Iron(III) Chloride')

//titania_powder
e.create('titania_powder').displayName('Titania Powder')

//Raw Andesite Alloy Lump
e.create('andesite_alloy_raw').displayName('Raw Andesite Alloy Lump')

//zeolite_powder
e.create('zeolite_powder').displayName('Zeolite Powder')

//iron_sulfate
e.create('iron_sulfate').displayName('Iron(II) Sulfate')

//solar_substrate 
e.create('solar_substrate').displayName('Solar Substrate')

//ashen_string
e.create('ashen_string').displayName('Ashen String')

//diamond_saw_head
e.create('diamond_saw_head').displayName('Diamond Saw Head')

//unfired_archaic_lump
e.create('unfired_archaic_lump').displayName('Unfired Archaic Lump')

//wax_anvil
e.create('wax_anvil').displayName('Wax Anvil')

//wooden_cross_beam
e.create('wooden_cross_beam').displayName('Wooden Cross Beam')

//gold_shovel_head
e.create('gold_shovel_head').displayName('Gold Shovel Head')

//obsidian_shovel_head
e.create('obsidian_shovel_head').displayName('Obsidian Shovel Head')

//diamond_shovel_head
e.create('diamond_shovel_head').displayName('Diamond Shovel Head')

//Type K Thermocouple
e.create('tkt').displayName('Type K Thermocouple')

//striking_die
e.create('striking_die').displayName('Striking Die')

//naquadah_sheet
e.create('naquadah_sheet').displayName('Naquadah Sheet')

//clay_insulator
e.create('clay_insulator').displayName('Unfired Ceramic Insulator')

//mold_circuit
e.create('mold_circuit').displayName('Mold Circuit')

//ceramic_insulator
e.create('ceramic_insulator').displayName('Ceramic Insulator')

//fluix_wire
e.create('fluix_wire').displayName('Fluix Wire')

//quartz_wire
e.create('quartz_wire').displayName('Quartz_wire')

//emptyspool
e.create('emptyspool').displayName('Empty Spool')

//Glass Fibre
e.create('glass_fibre').displayName('Fiberglass')

//Glass Wire
e.create('glass_wire').displayName('Glass Wire')

//wooden_glass_casing
e.create('wooden_glass_casing').displayName('Wooden Glass Casing')

//magic_motion_apparatus
e.create('magic_motion_apparatus').displayName('Magic Motion Apparatus')

//tanned_flesh
e.create('tanned_flesh').displayName('Tanned Flesh')

//squeezed_flesh
e.create('squeezed_flesh').displayName('Squeezed Flesh')

//creosote_string
e.create('creosote_string').displayName('Treated String')

//tanned_small
e.create('tanned_small').displayName('Tanned Hide')

//casing_electron_tube
e.create('casing_electron_tube').displayName('Vacuum Tube Casing')

//sodiumcarbonate
e.create('sodiumcarbonate').displayName('Sodium Carbonate')

//potassiumcarbonate
e.create('potassiumcarbonate').displayName('Potassium Carbonate')

//LeatherBag
e.create('leatherbag').displayName('Leather Bag')

//LeatherGlove
e.create('leatherglove').displayName('Leather Glove')

//Iron_Wrench_Head
e.create('ironwrenchhead').displayName('Wrought Iron Wrench Head')

//Glow String
e.create('glowstring').displayName('Glow String')

//Unfinished Candle
e.create('unfinished_candle').displayName('Unfinished Candle')

//Impregnated Paper
e.create('impregnated_paper').displayName('Impregnated Paper')

//Blank Blueprint
e.create('blank_blueprint').displayName('Blank Blueprint')

//AE2 Inscriber Casts
//Material Calculation Processor Cast
e.create('unfired_material_calculation_processor_press').displayName('Unfired Calculation Processor Cast')
e.create('fired_material_calculation_processor_press').displayName('Fired Calculation Processor Cast')
//Material Engineering Processor Cast
e.create('unfired_material_engineering_processor_press').displayName('Unfired Engineering Processor Cast')
e.create('fired_material_engineering_processor_press').displayName('Fired Engineering Processor Cast')
//Material logic Processor Cast
e.create('unfired_material_logic_processor_press').displayName('Unfired logic Processor Cast')
e.create('fired_material_logic_processor_press').displayName('Fired logic Processor Cast')
//Material Silicon Processor Cast
e.create('unfired_material_silicon_press').displayName('Unfired Silicon Processor Cast')
e.create('fired_material_silicon_press').displayName('Fired Silicon Processor Cast')
}),
StartupEvents.registry('fluid', e => {
	//red_mud
	e.create('red_mud')
		.thickTexture(0xAF5C24)
		.bucketColor(0xAF5C24)
		.displayName('Red Mud')

	//titanium_tetrachloride  
	e.create('titanium_tetrachloride')
		.thinTexture(0xCBCDC0)
		.bucketColor(0xCBCDC0)
		.density(-10)
		.displayName('Titanium Tetrachloride')

	//sodium_aluminate
	e.create('sodium_aluminate')
		.thinTexture(0xC8C7C3)
		.bucketColor(0xC8C7C3)
		.displayName('Sodium Aluminate Solution')

	//aluminium_hydroxide
	e.create('aluminium_hydroxide')
		.thinTexture(0xC8C7C3)
		.bucketColor(0xC8C7C3)
		.displayName('Aluminium Hydroxide')

	//chlorine
	e.create('chlorine')
		.thinTexture(0x9AA953)
		.bucketColor(0x9AA953)
		.density(-10)
		.displayName('Chlorine Gas')

	//hydrogen_chloride  
	e.create('hydrogen_chloride')
		.thinTexture(0xCBCDC0)
		.bucketColor(0xCBCDC0)
		.density(-10)
		.displayName('Hydrogen Chloride')	
	  
	//hydrochloric_acid
	e.create('hydrochloric_acid')
		.thinTexture(0xCBCDC0)
		.bucketColor(0xCBCDC0)
		.displayName('Hydrochloric Acid')

	//liquidCatalyst
	e.create('liquidcatalyst')
		.thinTexture(0xC4C1BC)
		.bucketColor(0xC4C1BC)
		.displayName('Liquid Catalyst')

	//MoltenRedAlloy
	e.create('moltenredalloy')
		.thickTexture(0xEB8F80)
		.bucketColor(0xEB8F80)
		.displayName('Molten Red Alloy')

	//LiquidCarbonSolution
	e.create('liquid_carbon_solution')
		.thinTexture(0x0D0D0D)
		.bucketColor(0x0D0D0D)
		.displayName('Liquid Carbon Solution')

	//Bleach
	e.create('bleach')
		.thinTexture(0xCFD74F)
		.bucketColor(0xCFD74F)
		.displayName('Bleach')

	//Waste
	e.create('waste')
		.thinTexture(0x5C2F07)
		.bucketColor(0x5C2F07)
		.displayName('Waste')

	//Molten Naquadah
	e.create('molten_naquadah')
		.thickTexture(0x5DB76A)
		.bucketColor(0x5DB76A)
		.displayName('Molten Naquadah')	

	//Metallic Naquadah
	e.create('metallic_naquadah')
		.thickTexture(0xB9BCC3)
		.bucketColor(0xB9BCC3)
		.displayName('Metallic Naquadah')	
})
/*
CapabilityEvents.blockEntity((event) => {
	event.attach("embers:hearth_coil",
	IHeatBlock.setTemperature(2000))
});

CapabilityEvents.blockEntity(event => {
	event.attach("embers:hearth_coil",
	HeatCapability.BLOCK_CAPABILITY.IHeatBlock.setTemperature(2000))})

CapabilityEvents.blockEntity(event => {
	event.attach("botania:blaze_block", 
	HeatCapability.BLOCK_CAPABILITY.IHeatBlock.setTemperature(2000))})	
*/	