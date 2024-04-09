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
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 143.0, 350.500024557113647, 42.0, 22.0 ],
					"text" : "r~ pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 343.0, 278.500012278556824, 40.0, 22.0 ],
					"text" : "s~ vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.0, 278.500012278556824, 44.0, 22.0 ],
					"text" : "s~ pos"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Bodoni 72 Oldstyle Book",
					"fontsize" : 20.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 274.500012278556824, 187.0, 30.0 ],
					"text" : "Phase Space"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 850.0, 297.500024557113647, 38.0, 22.0 ],
					"text" : "r~ vel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 555.0, 311.500012278556824, 42.0, 22.0 ],
					"text" : "r~ pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 850.0, 326.500024557113647, 54.0, 22.0 ],
					"text" : "*~ 0.001"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bufsize" : 252,
					"calccount" : 2,
					"fgcolor" : [ 0.156862745098039, 1.0, 0.168627450980392, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 555.0, 360.0, 315.0, 305.0 ],
					"range" : [ -2.0, 2.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 75.0, 207.000012278556824, 60.0, 22.0 ],
					"text" : "*~ 10000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 75.0, 123.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 75.0, 156.0, 39.0, 22.0 ],
					"text" : "click~"
				}

			}
, 			{
				"box" : 				{
					"attr" : "stiffL",
					"id" : "obj-13",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.5, 169.0, 219.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 143.0, 525.0, 113.0, 22.0 ],
					"text" : "biquad~ 1 -1 -0.995"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 20,
					"id" : "obj-11",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 677.0, 70.0, 279.0, 60.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-4", "attrui", "attr", "calccount", 5, "obj-4", "attrui", "int", 2, 5, "obj-18", "attrui", "attr", "range", 6, "obj-18", "attrui", "list", -2.0, 2.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.006, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 20000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.00153, 5, "<invalid>", "flonum", "float", 1489.0, 5, "obj-6", "live.gain~", "float", -3.045214653015137, 5, "obj-7", "flonum", "float", 166.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 0.1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-4", "attrui", "attr", "calccount", 5, "obj-4", "attrui", "int", 2, 5, "obj-18", "attrui", "attr", "range", 6, "obj-18", "attrui", "list", -2.0, 2.0, 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 10000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 10000.0, 5, "obj-6", "live.gain~", "float", -19.537624359130859, 5, "obj-7", "flonum", "float", 70.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 30000.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.005, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 40000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.31, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -19.537624359130859, 5, "obj-7", "flonum", "float", 70.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 2000.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 10000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 36.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 1000.0 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 3373.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 102.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 0.1 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 10000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 36.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 1000.0 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.0029, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 20000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.00251, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 275.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 0.1 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.0085, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 30000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.0142, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 275.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 0.1 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 10000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 36.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 1000.0 ]
						}
, 						{
							"number" : 18,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.018, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 10000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.02, 5, "<invalid>", "flonum", "float", 0.405000001192093, 5, "obj-6", "live.gain~", "float", -12.110074043273926, 5, "obj-7", "flonum", "float", 36.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 1000.0 ]
						}
, 						{
							"number" : 21,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.006, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 30000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.01, 5, "<invalid>", "flonum", "float", 62.0, 5, "obj-6", "live.gain~", "float", -28.091241836547852, 5, "obj-7", "flonum", "float", 10.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 1.0 ]
						}
, 						{
							"number" : 22,
							"data" : [ 5, "obj-29", "attrui", "attr", "damp", 5, "obj-29", "attrui", "float", 0.035, 5, "obj-28", "attrui", "attr", "stiffNL", 5, "obj-28", "attrui", "float", 30000.0, 5, "obj-27", "attrui", "attr", "mass", 5, "obj-27", "attrui", "float", 0.01, 5, "<invalid>", "flonum", "float", 62.0, 5, "obj-6", "live.gain~", "float", -28.091241836547852, 5, "obj-7", "flonum", "float", 873.0, 5, "obj-13", "attrui", "attr", "stiffL", 5, "obj-13", "attrui", "float", 30000.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-7",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 118.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 143.0, 376.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 150.0, 207.000012278556824, 54.0, 22.0 ],
					"text" : "*~ 7000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 638.0, 61.0, 20.0 ],
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
					"patching_rect" : [ 143.0, 556.0, 78.0, 22.0 ],
					"text" : "clip~ -0.8 0.8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 245.0, 126.0, 20.0 ],
					"text" : "Have a look in here ->"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Copperplate",
					"fontsize" : 14.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.5, 61.0, 542.0, 49.0 ],
					"text" : "Hooke Law is modified using x^3 instead of x\nDigital Implementation using a Symplectic Forward-Euler Finite Difference Scheme"
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
					"patching_rect" : [ 56.5, 25.0, 615.0, 30.0 ],
					"text" : "Forced Nonlinear Mass-Spring-Damper Oscillator (Duffing Oscillator)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 150.0, 149.5, 60.0, 22.0 ],
					"text" : "cycle~ 40"
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
					"patching_rect" : [ 270.0, 465.0, 234.0, 176.0 ],
					"samples" : 4000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 130.5, 601.5, 45.0, 45.0 ]
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
						"rect" : [ 255.0, 92.0, 934.0, 679.0 ],
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
									"code" : "\r\nParam mass(0.01,min=0.0001,max=1.0);                         \r\nParam stiffL(30000,min=0.1,max=1e6);\r\nParam stiffNL(30000,min=0.1,max=1e6);\r\nParam damp(0.035,min=0,max=1000);\r\n\r\nHistory x(0.0);\r\nHistory v(0.0);\r\nHistory F(0.0);\r\n\r\n// Sample Period\r\nT = 1.0 / SAMPLERATE;                                             \r\n\r\n// get external force from input 1\r\nFext = in1;\r\n            \r\n// update velocity\r\nv = v + T/mass * F;\r\n\r\n//update position\r\nx = x + T*v;\r\n\r\n//compute Force for the next step\r\nF = -stiffL*x -stiffNL*x*x*x - damp*v + Fext;   \r\n\r\n// output the mass position (displacement) and velocity\r\nout1 = x;\r\nout2 = v;",
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
					"patching_rect" : [ 167.0, 245.0, 195.0, 22.0 ],
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
					"patching_rect" : [ 320.5, 149.5, 35.0, 22.0 ],
					"text" : "reset"
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
					"patching_rect" : [ 464.0, 138.0, 200.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "stiffNL",
					"id" : "obj-28",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 460.5, 199.0, 219.0, 22.0 ]
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
					"patching_rect" : [ 460.5, 230.0, 219.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "range",
					"id" : "obj-18",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 906.0, 297.500024557113647, 187.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "calccount",
					"id" : "obj-4",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 906.0, 326.500024557113647, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-20", 0 ]
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
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-7", 0 ]
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
			"obj-6" : [ "live.gain~[1]", "live.gain~", 0 ],
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
				"name" : "Duffing Oscillator.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 1,
		"snapshot" : 		{
			"filetype" : "C74Snapshot",
			"version" : 2,
			"minorversion" : 0,
			"name" : "snapshotlist",
			"origin" : "jpatcher",
			"type" : "list",
			"subtype" : "Undefined",
			"embed" : 1,
			"snapshot" : 			{
				"valuedictionary" : 				{
					"parameter_values" : 					{
						"live.gain~[1]" : -14.010877506291102
					}

				}

			}
,
			"snapshotlist" : 			{
				"current_snapshot" : 0,
				"entries" : [ 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "Duffing Oscillator",
						"origin" : "Duffing Oscillator",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"live.gain~[1]" : -14.010877506291102
								}

							}

						}
,
						"fileref" : 						{
							"name" : "Duffing Oscillator",
							"filename" : "Duffing Oscillator.maxsnap",
							"filepath" : "~/Documents/Max 8/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "765c30afae802ef3b0e6317168eba5e2"
						}

					}
 ]
			}

		}

	}

}
