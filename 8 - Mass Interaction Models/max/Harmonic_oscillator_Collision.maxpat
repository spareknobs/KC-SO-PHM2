{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 1212.0, 679.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 918.5, 290.5, 44.0, 22.0 ],
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 927.0, 378.5, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"interval" : 20.0,
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 918.5, 350.5, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 918.5, 317.5, 118.0, 22.0 ],
					"text" : "scale~ -1. 1. -0.1 1.2"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-48",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 767.5, 255.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 835.0, 429.5, 237.0, 20.0 ],
					"text" : "switch to modulate the barrier position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 783.0, 382.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.08 ],
					"id" : "obj-39",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 247.0, 416.0, 287.0, 176.0 ],
					"slidercolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"interval" : 20.0,
					"maxclass" : "number~",
					"mode" : 2,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "float" ],
					"patching_rect" : [ 767.5, 355.0, 56.0, 22.0 ],
					"sig" : 0.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 767.5, 322.0, 118.0, 22.0 ],
					"text" : "scale~ -1. 1. -0.1 1.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 767.5, 288.0, 70.0, 22.0 ],
					"text" : "cycle~ 0.25"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 247.0, 599.5, 81.0, 22.0 ],
					"text" : "barrierPos $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 566.0, 456.0, 237.0, 47.0 ],
					"text" : "Barrier Position\n\nif x > barrierPos, collision will occur"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 363.0, 144.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 20000.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 30.0, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.372, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 1000000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.07, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 1913.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 27830.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 100.0, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 1000000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.3, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 2000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.590909090909091, 5, "obj-40", "gswitch2", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 27830.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 0.0, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.42, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 6101.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.236, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 3433.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 27830.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 1.3, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.42, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 6101.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.09, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 3433.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.007, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 20000.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 0.43, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 1000000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.459, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 2000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.018, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.590909090909091, 5, "obj-40", "gswitch2", "int", 0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 2619.0, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.31, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 0.00203, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.112, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 4110.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 470.0, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.43, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 1000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.459, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 2000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 30000.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 2003.0, 5, "<invalid>", "attrui", "attr", "barrierPos", 5, "<invalid>", "attrui", "float", 0.5, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 286.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.32, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 10376.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "<invalid>", "number~", "list", 0.0, 0.0 ]
						}
, 						{
							"number" : 18,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 33822.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 41.0, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 600000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.42, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 4110.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.014, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.344632768361582, 5, "obj-40", "gswitch2", "int", 0 ]
						}
, 						{
							"number" : 19,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 33822.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 600000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.42, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 4110.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.03, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.344632768361582, 5, "obj-40", "gswitch2", "int", 0 ]
						}
, 						{
							"number" : 20,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 33822.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 26.5, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 600000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.42, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 4110.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.017, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.344632768361582, 5, "obj-40", "gswitch2", "int", 0 ]
						}
, 						{
							"number" : 21,
							"data" : [ 5, "obj-22", "attrui", "attr", "inputGain", 5, "obj-22", "attrui", "float", 33822.0, 5, "obj-30", "attrui", "attr", "collisionDamp", 5, "obj-30", "attrui", "float", 0.0, 5, "obj-4", "attrui", "attr", "collisionStiff", 5, "obj-4", "attrui", "float", 800000.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.515, 5, "obj-28", "attrui", "attr", "stiff", 5, "obj-28", "attrui", "float", 4110.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.017, 5, "obj-2", "live.gain~", "float", 0.0, 5, "obj-34", "toggle", "int", 1, 6, "obj-37", "number~", "list", 0.0, 0.0, 5, "obj-39", "multislider", "list", 0.829545454545455, 5, "obj-40", "gswitch2", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 596.0, 124.0, 85.0, 20.0 ],
					"text" : "Force Impulse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 407.0, 61.0, 20.0 ],
					"text" : "safety net"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 150.0, 407.0, 78.0, 22.0 ],
					"text" : "clip~ -0.8 0.8"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"openrect" : [ 177.0, 222.0, 188.0, 237.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 188.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bkgndpict" : "wfmodes.png",
									"bottomvalue" : 3,
									"id" : "obj-11",
									"imagemask" : 1,
									"inactiveimage" : 0,
									"knobpict" : "wfknob.png",
									"maxclass" : "pictslider",
									"movehorizontal" : 0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 13.0, 32.5, 19.0, 76.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1.0, 0.5, 19.0, 76.0 ],
									"rightvalue" : 0,
									"topvalue" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 2,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 175.0, 158.0, 298.0, 526.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 17.0, 9.0, 137.0, 18.0 ],
													"style" : "helpfile_label",
													"text" : "(special thanks to Pure)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 225.0, 476.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 443.571411000000012, 44.0, 22.0 ],
													"text" : "set $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 77.5, 154.0, 35.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 20.0, 154.0, 35.0, 22.0 ],
													"text" : "2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 19.0, 38.0, 61.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 144.21875, 213.0, 60.929687999999999, 22.0 ],
													"text" : "switch"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 20.0, 126.0, 134.0, 22.0 ],
													"text" : "sel macintosh windows"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 20.0, 101.0, 106.0, 22.0 ],
													"text" : "r #0_getsystem"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.0, 64.0, 183.0, 35.0 ],
													"text" : ";\rmax getsystem #0_getsystem"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 144.21875, 408.571411000000012, 32.0, 22.0 ],
													"text" : "int"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "int", "int", "int", "int", "int" ],
													"patching_rect" : [ 121.25, 154.0, 105.53125, 22.0 ],
													"text" : "modifiers 100"
												}

											}
, 											{
												"box" : 												{
													"coll_data" : 													{
														"count" : 4,
														"data" : [ 															{
																"key" : 0,
																"value" : [ "mode", "select" ]
															}
, 															{
																"key" : 1,
																"value" : [ "mode", "loop" ]
															}
, 															{
																"key" : 2,
																"value" : [ "mode", "move" ]
															}
, 															{
																"key" : 3,
																"value" : [ "mode", "draw" ]
															}
 ]
													}
,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 144.21875, 443.571411000000012, 62.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"precision" : 6
													}
,
													"text" : "coll"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 144.21875, 287.571411000000012, 32.0, 22.0 ],
													"text" : "|"
												}

											}
, 											{
												"box" : 												{
													"comment" : "waveform~ mode messages",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 32.5, 298.571411000000012, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 207.78125, 213.0, 36.0, 22.0 ],
													"text" : "<< 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 144.21875, 319.571411000000012, 51.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 144.21875, 352.571411000000012, 99.78125, 22.0 ],
													"text" : "select 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 144.21875, 253.571411000000012, 36.0, 22.0 ],
													"text" : "pak"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-9",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 144.21875, 476.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 2 ],
													"source" : [ "obj-10", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-10", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-10", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 0,
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 1,
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 15.0, 127.5, 54.0, 21.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p wfkeys"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 164.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"midpoints" : [ 59.5, 164.5, 110.0, 164.5, 110.0, 22.5, 24.5, 22.5 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 709.0, 94.5, 21.0, 79.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 678.0, 36.0, 158.0, 22.0 ],
					"text" : "size 1, fill 1, apply blackman"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 678.0, 9.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 356.0, 126.0, 20.0 ],
					"text" : "Have a look in here ->"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Ableton Sans Bold Regular",
					"fontsize" : 14.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.5, 59.5, 469.0, 40.0 ],
					"text" : "Digital Implementation using a Symplectic Forward-Euler Finite Difference Scheme"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Bodoni 72 Oldstyle Book",
					"fontsize" : 20.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.5, 25.0, 469.0, 30.0 ],
					"text" : "Mass-Spring-Damper Oscillator + Collision"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 147.0, 204.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 147.0, 230.5, 69.0, 22.0 ],
					"text" : "metro 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 150.0, 292.5, 68.0, 22.0 ],
					"text" : "play~ force"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "force",
					"id" : "obj-12",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 732.0, 94.5, 254.0, 93.0 ],
					"setmode" : 3
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 678.0, 66.0, 86.0, 22.0 ],
					"text" : "buffer~ force 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"interval" : 20.0,
					"maxclass" : "live.scope~",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 247.0, 416.0, 287.0, 176.0 ],
					"samples" : 4000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 149.0, 633.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 150.0, 441.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "dsp.gen",
						"rect" : [ 312.0, 107.0, 934.0, 679.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.0, 568.0, 35.0, 22.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"code" : "\r\nParam inputGain(12e3,min=0.0,max=1e5);  \r\nParam mass(0.03,min=0.0001,max=1.0);                         \r\nParam stiff(2e3,min=0.1,max=1e6);\r\nParam damp(0.03,min=0,max=1000);\r\nParam barrierPos(0.4,min=-4.0,max=4.0);\r\nParam collisionStiff(1e6,min=0.0,max=1e9);\r\nParam collisionDamp(1.0,min=0.0,max=1e4);\r\n\r\nHistory x(0.0);\r\nHistory v(0.0);\r\nHistory F(0.0);\r\nHistory Fcollision(0.0);\r\nHistory xmax(0.0);\r\n\r\n// Sample Period\r\nT = 1.0 / SAMPLERATE;                                             \r\n\r\n// get external force from input 1\r\nFext = in1*inputGain;\r\n            \r\n// update velocity\r\nv = v + T/mass * F;\r\n\r\n//update position\r\nx = x + T*v;\r\n\r\nif (x>xmax) xmax = x;\r\n\r\n// compute 'penetration' into the barrier\r\nxdelta = x - barrierPos;\r\n \r\nif (xdelta > 0){\r\n\t// the sign of the resulting collision force \r\n\t// will be opposite to the penetration\r\n\tFcollision = -collisionStiff * xdelta - collisionDamp*v;\r\n }\r\nelse{\r\n\tFcollision=0;\r\n\t}\r\n\t\r\n//compute Force for the next step\r\nF = -stiff*x - damp*v + Fext + Fcollision;   \r\n\r\n// output the mass position (displacement)\r\nout1 = x;\r\n\r\nout2 = xmax;",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 129.0, 72.0, 587.0, 480.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.0, 39.0, 28.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 129.0, 561.0, 35.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 150.0, 356.0, 195.0, 22.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 95.0, 304.0, 35.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 150.0, 262.5, 50.0, 22.0 ],
					"text" : "start $1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "mass",
					"id" : "obj-27",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 379.5, 276.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "stiff",
					"id" : "obj-28",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 379.5, 300.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "damp",
					"id" : "obj-29",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 384.0, 324.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "collisionStiff",
					"id" : "obj-4",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 548.333333849906921, 288.0, 161.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "collisionDamp",
					"id" : "obj-30",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 548.333333849906921, 310.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "inputGain",
					"id" : "obj-22",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 379.5, 251.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "wfknob.png",
				"bootpath" : "C74:/media/max/picts",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "wfmodes.png",
				"bootpath" : "C74:/media/max/picts",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
