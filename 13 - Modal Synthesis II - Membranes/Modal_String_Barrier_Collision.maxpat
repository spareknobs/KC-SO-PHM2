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
		"rect" : [ -286.0, -993.0, 1384.0, 959.0 ],
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
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.5, 86.5, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.5, 56.5, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-64",
					"maxclass" : "flonum",
					"minimum" : 0.00001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 828.5, 290.500005841255188, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.5, 351.500005841255188, 62.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "damp2 $1"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-63",
					"knobcolor" : [ 1.0, 0.086274509803922, 0.086274509803922, 1.0 ],
					"maxclass" : "slider",
					"mult" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.5, 246.833339095115662, 181.0, 18.0 ],
					"size" : 5000.0
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-61",
					"knobcolor" : [ 1.0, 0.086274509803922, 0.086274509803922, 1.0 ],
					"maxclass" : "slider",
					"mult" : 0.001,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.5, 333.0, 181.0, 18.0 ],
					"size" : 2000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 667.833333969116211, 557.0, 232.0, 20.0 ],
					"text" : "collision force"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 385.833331227302551, 557.0, 232.0, 20.0 ],
					"text" : "displacement @ collision point"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 250.0, 28.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 646.3333420753479, 582.666684031486511, 197.333333730697632, 173.333336472511292 ],
					"range" : [ -0.1, 10.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 568.000016927719116, 582.666684031486511, 61.0, 183.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "threshold",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -6.0,
							"parameter_shortname" : "threshold",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.slider"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 367.666667103767395, 582.666684031486511, 197.333333730697632, 173.333336472511292 ],
					"range" : [ -6.0, 6.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.5, 204.000003457069397, 162.0, 21.0 ],
					"text" : "Excitation Force"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 19.0, 340.000003457069397, 82.0, 22.0 ],
					"text" : "play~ impulse"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.0, 372.000003457069397, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 19.0, 414.000003457069397, 34.0, 22.0 ],
					"text" : "*~ 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.5, 231.000003457069397, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 17.5, 279.000003457069397, 69.0, 22.0 ],
					"text" : "metro 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 310.000003457069397, 32.0, 22.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 731.5, 318.500005841255188, 47.0, 22.0 ],
					"text" : "* 0.001"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"minimum" : 0.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 505.5, 315.500005841255188, 58.5, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 505.5, 351.500005841255188, 58.0, 22.0 ],
					"text" : "length $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"maximum" : 10.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.833331227302551, 315.500005841255188, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.833331227302551, 351.500005841255188, 80.0, 22.0 ],
					"text" : "dispersion $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-27",
					"maxclass" : "flonum",
					"minimum" : 0.00001,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 731.5, 290.500005841255188, 83.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 731.5, 351.500005841255188, 55.0, 22.0 ],
					"text" : "damp $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.5, 293.833339095115662, 77.0, 22.0 ],
					"text" : "loadmess 80"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "live.scope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 163.5, 582.666684031486511, 197.333333730697632, 173.333336472511292 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.247058823529412, 0.196078431372549, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 1.0, 0.247058823529412, 0.196078431372549, 1.0 ],
					"bgfillcolor_color1" : [ 1.0, 0.247058823529412, 0.196078431372549, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "gradient",
					"gradient" : 1,
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.5, 481.583333373069763, 50.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 301.5, 163.0, 231.0, 23.0 ],
					"text" : "sizeinsamps 128, fill 1, apply hamming"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.500020861625671, 499.0, 59.0, 22.0 ],
					"text" : "r nmodes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 446.666667103767395, 388.50000536441803, 61.0, 22.0 ],
					"text" : "s nmodes"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-60",
					"maxclass" : "flonum",
					"maximum" : 0.1,
					"minimum" : -100.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.5, 775.0, 94.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.5, 805.0, 99.0, 22.0 ],
					"text" : "collisionThres $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-55",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.5, 270.0, 94.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.5, 294.0, 88.0, 22.0 ],
					"text" : "collisionStiff $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-52",
					"maxclass" : "flonum",
					"maximum" : 4.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.5, 358.166664361953735, 94.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.5, 384.0, 113.0, 22.0 ],
					"text" : "collisionDamp $1"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-50",
					"maxclass" : "slider",
					"mult" : 0.01,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 940.833333969116211, 253.833339095115662, 295.0, 27.0 ],
					"size" : 100.0
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-48",
					"maxclass" : "slider",
					"mult" : 0.01,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 940.833333969116211, 212.833339095115662, 295.0, 27.0 ],
					"size" : 100.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Bodoni 72 Oldstyle Book",
					"fontsize" : 20.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 494.000008940696716, 21.999999403953552, 502.0, 30.0 ],
					"text" : "Modal Synthesis of a Linear String + Collision interactor"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 683.0, 153.0, 22.0 ],
					"text" : "buffer~ CWout @samps 64"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 710.0, 146.0, 22.0 ],
					"text" : "buffer~ CWin @samps 64"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1039.833333969116211, 307.833339095115662, 85.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1039.833333969116211, 348.833339095115662, 89.0, 22.0 ],
					"text" : "collisionPos $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 940.833333969116211, 307.833339095115662, 85.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 940.833333969116211, 343.833339095115662, 74.0, 22.0 ],
					"text" : "pluckPos $1"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 20,
					"id" : "obj-17",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 560.5, 115.5, 226.0, 60.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -14.859434127807617, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 87.0, 5, "obj-25", "flonum", "float", 0.24462679028511, 5, "obj-21", "flonum", "float", 0.96317046880722, 5, "obj-48", "slider", "float", 24.462678909301758, 5, "obj-50", "slider", "float", 96.317047119140625, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -2.726406097412109, 5, "obj-27", "flonum", "float", 0.372999995946884, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -2.726406097412109, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -17.404052734375, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 107.0, 5, "obj-25", "flonum", "float", 0.300000011920929, 5, "obj-21", "flonum", "float", 0.96317046880722, 5, "obj-48", "slider", "float", 24.462678909301758, 5, "obj-50", "slider", "float", 96.317047119140625, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -2.726406097412109, 5, "obj-27", "flonum", "float", 0.372999995946884, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -2.726406097412109, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -14.998104095458984, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 71.0, 5, "obj-25", "flonum", "float", 0.314274042844772, 5, "obj-21", "flonum", "float", 0.978941082954407, 5, "obj-48", "slider", "float", 31.427402496337891, 5, "obj-50", "slider", "float", 97.89410400390625, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 1.943753361701965, 5, "obj-60", "flonum", "float", 0.100000001490116, 5, "obj-27", "flonum", "float", 0.122000001370907, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 0.888999998569489, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 18.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", 0.634491860866547, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 1943.7532958984375 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -14.859434127807617, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 87.0, 5, "obj-25", "flonum", "float", 0.24462679028511, 5, "obj-21", "flonum", "float", 0.96317046880722, 5, "obj-48", "slider", "float", 24.462678909301758, 5, "obj-50", "slider", "float", 96.317047119140625, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -18.101924896240234, 5, "obj-6", "number", "int", 133, 5, "obj-67", "flonum", "float", 65.0, 5, "obj-25", "flonum", "float", 0.804316282272339, 5, "obj-21", "flonum", "float", 0.873579740524292, 5, "obj-48", "slider", "float", 80.431625366210938, 5, "obj-50", "slider", "float", 87.35797119140625, 5, "obj-52", "flonum", "float", 2.0, 5, "obj-55", "flonum", "float", 8.0, 5, "obj-60", "flonum", "float", -0.00800000037998, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -23.587198257446289, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 52.0, 5, "obj-25", "flonum", "float", 0.28999999165535, 5, "obj-21", "flonum", "float", 0.873579740524292, 5, "obj-48", "slider", "float", 80.431625366210938, 5, "obj-50", "slider", "float", 87.35797119140625, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -14.859434127807617, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 87.0, 5, "obj-25", "flonum", "float", 0.24462679028511, 5, "obj-21", "flonum", "float", 0.721442520618439, 5, "obj-48", "slider", "float", 24.462678909301758, 5, "obj-50", "slider", "float", 72.144248962402344, 5, "obj-52", "flonum", "float", 0.80701756477356, 5, "obj-55", "flonum", "float", 2.486709117889404, 5, "obj-60", "flonum", "float", 0.100000001490116, 5, "obj-27", "flonum", "float", 0.372999995946884, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", 1.20078432559967, 5, "obj-61", "slider", "float", 807.01751708984375, 5, "obj-63", "slider", "float", 2486.709228515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -8.275007247924805, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 38.0, 5, "obj-25", "flonum", "float", 0.314349502325058, 5, "obj-21", "flonum", "float", 0.599050462245941, 5, "obj-48", "slider", "float", 31.43494987487793, 5, "obj-50", "slider", "float", 59.905048370361328, 5, "obj-52", "flonum", "float", 0.80701756477356, 5, "obj-55", "flonum", "float", 2.486709117889404, 5, "obj-60", "flonum", "float", 0.100000001490116, 5, "obj-27", "flonum", "float", 0.819999992847443, 5, "obj-70", "flonum", "float", 3.730000019073486, 5, "obj-15", "flonum", "float", 1.700000047683716, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", 1.20078432559967, 5, "obj-61", "slider", "float", 807.01751708984375, 5, "obj-63", "slider", "float", 2486.709228515625, 5, "obj-64", "flonum", "float", 0.001739999977872 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -8.275007247924805, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 38.0, 5, "obj-25", "flonum", "float", 0.476658493280411, 5, "obj-21", "flonum", "float", 0.91363263130188, 5, "obj-48", "slider", "float", 47.665847778320312, 5, "obj-50", "slider", "float", 91.363265991210938, 5, "obj-52", "flonum", "float", 0.113450288772583, 5, "obj-55", "flonum", "float", 3.654705047607422, 5, "obj-60", "flonum", "float", -0.310390055179596, 5, "obj-27", "flonum", "float", 2.107000112533569, 5, "obj-70", "flonum", "float", 6.099999904632568, 5, "obj-15", "flonum", "float", 1.700000047683716, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", -0.310390055179596, 5, "obj-61", "slider", "float", 113.450294494628906, 5, "obj-63", "slider", "float", 3654.704833984375, 5, "obj-64", "flonum", "float", 0.000199999994948 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -20.495626449584961, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 132.0, 5, "obj-25", "flonum", "float", 0.136258035898209, 5, "obj-21", "flonum", "float", 0.872889935970306, 5, "obj-48", "slider", "float", 13.625802993774414, 5, "obj-50", "slider", "float", 87.288993835449219, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -18.49970817565918, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 132.0, 5, "obj-25", "flonum", "float", 0.136258035898209, 5, "obj-21", "flonum", "float", 0.988165676593781, 5, "obj-48", "slider", "float", 13.625802993774414, 5, "obj-50", "slider", "float", 98.816566467285156, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -21.990814208984375, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 132.0, 5, "obj-25", "flonum", "float", 0.838004171848297, 5, "obj-21", "flonum", "float", 0.872889935970306, 5, "obj-48", "slider", "float", 83.8004150390625, 5, "obj-50", "slider", "float", 87.288993835449219, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 4.32748556137085, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 4327.4853515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -28.27165412902832, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 178.0, 5, "obj-25", "flonum", "float", 0.268131792545319, 5, "obj-21", "flonum", "float", 0.818933546543121, 5, "obj-48", "slider", "float", 26.813179016113281, 5, "obj-50", "slider", "float", 81.893356323242188, 5, "obj-52", "flonum", "float", 0.0, 5, "obj-55", "flonum", "float", 3.261563062667847, 5, "obj-60", "flonum", "float", -0.404750913381577, 5, "obj-27", "flonum", "float", 0.264899998903275, 5, "obj-70", "flonum", "float", 1.080000042915344, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", -0.404750913381577, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 3261.56298828125, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -12.16739559173584, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 132.0, 5, "obj-25", "flonum", "float", 0.530673444271088, 5, "obj-21", "flonum", "float", 0.532031714916229, 5, "obj-48", "slider", "float", 53.067344665527344, 5, "obj-50", "slider", "float", 53.203170776367188, 5, "obj-52", "flonum", "float", 0.352684766054153, 5, "obj-55", "flonum", "float", 0.853269517421722, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.370000004768372, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 352.68475341796875, 5, "obj-63", "slider", "float", 853.26953125, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -17.199913024902344, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 132.0, 5, "obj-25", "flonum", "float", 0.158982574939728, 5, "obj-21", "flonum", "float", 0.892391383647919, 5, "obj-48", "slider", "float", 15.898258209228516, 5, "obj-50", "slider", "float", 89.2391357421875, 5, "obj-52", "flonum", "float", 0.352684766054153, 5, "obj-55", "flonum", "float", 0.853269517421722, 5, "obj-60", "flonum", "float", -0.897637784481049, 5, "obj-27", "flonum", "float", 0.356000006198883, 5, "obj-70", "flonum", "float", 3.0, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 352.68475341796875, 5, "obj-63", "slider", "float", 853.26953125, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -14.859434127807617, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 67.0, 5, "obj-25", "flonum", "float", 0.24462679028511, 5, "obj-21", "flonum", "float", 0.721442520618439, 5, "obj-48", "slider", "float", 24.462678909301758, 5, "obj-50", "slider", "float", 72.144248962402344, 5, "obj-52", "flonum", "float", 0.80701756477356, 5, "obj-55", "flonum", "float", 2.486709117889404, 5, "obj-60", "flonum", "float", 0.100000001490116, 5, "obj-27", "flonum", "float", 0.819999992847443, 5, "obj-70", "flonum", "float", 1.970999956130981, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", 1.20078432559967, 5, "obj-61", "slider", "float", 807.01751708984375, 5, "obj-63", "slider", "float", 2486.709228515625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -8.275007247924805, 5, "obj-6", "number", "int", 136, 5, "obj-67", "flonum", "float", 67.0, 5, "obj-25", "flonum", "float", 0.314349502325058, 5, "obj-21", "flonum", "float", 0.599050462245941, 5, "obj-48", "slider", "float", 31.43494987487793, 5, "obj-50", "slider", "float", 59.905048370361328, 5, "obj-52", "flonum", "float", 0.80701756477356, 5, "obj-55", "flonum", "float", 2.486709117889404, 5, "obj-60", "flonum", "float", 0.100000001490116, 5, "obj-27", "flonum", "float", 0.819999992847443, 5, "obj-70", "flonum", "float", 3.730000019073486, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 23.0, 5, "obj-43", "live.slider", "float", 1.20078432559967, 5, "obj-61", "slider", "float", 807.01751708984375, 5, "obj-63", "slider", "float", 2486.709228515625, 5, "obj-64", "flonum", "float", 0.001739999977872 ]
						}
, 						{
							"number" : 19,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -1.145377635955811, 5, "obj-6", "number", "int", 147, 5, "obj-67", "flonum", "float", 131.0, 5, "obj-25", "flonum", "float", 0.107216760516167, 5, "obj-21", "flonum", "float", 0.93385523557663, 5, "obj-48", "slider", "float", 10.721675872802734, 5, "obj-50", "slider", "float", 93.385520935058594, 5, "obj-52", "flonum", "float", 0.298883587121964, 5, "obj-55", "flonum", "float", 5.303030490875244, 5, "obj-60", "flonum", "float", -0.000980000011623, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.100000001490116, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 13.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 298.883575439453125, 5, "obj-63", "slider", "float", 5303.0302734375, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
, 						{
							"number" : 20,
							"data" : [ 5, "obj-59", "attrui", "attr", "postamp", 5, "obj-59", "attrui", "float", -1.6, 5, "obj-57", "attrui", "attr", "lookahead", 5, "obj-57", "attrui", "int", 511, 5, "obj-24", "attrui", "attr", "threshold", 5, "obj-24", "attrui", "float", -4.800000000000001, 5, "obj-56", "live.gain~", "float", -17.55322265625, 5, "obj-6", "number", "int", 14, 5, "obj-67", "flonum", "float", 131.0, 5, "obj-25", "flonum", "float", 0.107216760516167, 5, "obj-21", "flonum", "float", 0.953987717628479, 5, "obj-48", "slider", "float", 10.721675872802734, 5, "obj-50", "slider", "float", 95.398773193359375, 5, "obj-52", "flonum", "float", 2.0, 5, "obj-55", "flonum", "float", 6.023391723632812, 5, "obj-60", "flonum", "float", -0.000980000011623, 5, "obj-27", "flonum", "float", 0.248999997973442, 5, "obj-70", "flonum", "float", 0.100000001490116, 5, "obj-15", "flonum", "float", 1.0, 5, "obj-35", "toggle", "int", 1, 5, "obj-33", "flonum", "float", 13.0, 5, "<invalid>", "number", "int", 0, 5, "obj-43", "live.slider", "float", -0.897637784481049, 5, "obj-61", "slider", "float", 0.0, 5, "obj-63", "slider", "float", 6023.3916015625, 5, "obj-64", "flonum", "float", 0.004999999888241 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-67",
					"maxclass" : "flonum",
					"maximum" : 1000.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.5, 315.500005841255188, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.5, 351.500005841255188, 58.0, 22.0 ],
					"text" : "tuning $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 421.5, 321.166672348976135, 44.166667103767395, 22.0 ],
					"text" : "t i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.5, 353.833339095115662, 68.0, 22.0 ],
					"text" : "nmodes $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 948.5, 393.500005841255188, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 932.500020861625671, 601.5, 131.0, 22.0 ],
					"text" : "buffer~ A2 @samps 64"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 630.0, 131.0, 22.0 ],
					"text" : "buffer~ A1 @samps 64"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 657.5, 132.0, 22.0 ],
					"text" : "buffer~ B1 @samps 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 977.0, 393.500005841255188, 182.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ComputeStringCollisionModes.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ComputeStringCollisionModes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 167.5, 47.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5, 76.0, 213.0, 23.0 ],
					"text" : "sizeinsamps $1, fill 1, apply triangle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 31.0, 858.5, 44.0, 22.0 ],
					"text" : "limi~ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 757.0, 145.0, 22.0 ],
					"text" : "buffer~ Wout @samps 64"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "impulse",
					"clipdraw" : 1,
					"id" : "obj-14",
					"labels" : 0,
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 13.0, 70.0, 144.0, 112.0 ],
					"ruler" : 0,
					"setmode" : 4,
					"voffset" : 1.0,
					"vzoom" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.5, 134.0, 309.0, 23.0 ],
					"text" : "fill 1, apply triangle half, apply gain -1, apply offset 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5, 104.0, 231.0, 23.0 ],
					"text" : "sizeinsamps 512, fill 1, apply hamming"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 163.5, 163.0, 123.0, 23.0 ],
					"text" : "buffer~ impulse 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 31.0, 574.0, 123.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
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
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
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
						"rect" : [ 419.0, -947.0, 1099.0, 849.0 ],
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
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 838.333333492279053, 789.666667461395264, 35.0, 22.0 ],
									"text" : "out 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 454.333322048187256, 779.000000476837158, 35.0, 22.0 ],
									"text" : "out 2"
								}

							}
, 							{
								"box" : 								{
									"code" : "Buffer freqs(\"freqs\");\r\nBuffer Win(\"Win\");\r\nBuffer Wout(\"Wout\");\r\nBuffer CWin(\"CWin\"); // collision point \r\nBuffer CWout(\"CWout\"); // collision point \r\nBuffer A1(\"A1\");\r\nBuffer A2(\"A2\");\r\nBuffer B1(\"B1\");\r\n\r\nParam nmodes(64);\r\nParam collisionStiff(0, min=0, max=10);\r\nParam collisionDamp(0, min=0, max=10);\r\nParam collisionThres(-2.0);\r\n\r\n// use a Data to store the previous 'y' values for each resonator\r\nData hy1(nmodes);\r\nData hy2(nmodes);\r\n\r\nHistory prevCDispl(0);\r\nHistory prevCVel(0);\r\n\r\nx = in1;\r\n\r\n// string displacement @ pickup position\r\ndispl = 0;\r\n\r\n// string displacement @ collision position\r\ncdispl = 0;\r\n\r\n//------------------------------------------------\r\n// Rigid barrier visco-elastic collision\r\ncollisionForce = 0;\r\nvdelta = collisionThres - prevCDispl;\r\n\r\nif ( vdelta > 0 )\r\n{\r\n\tcollisionForce = vdelta * collisionStiff - collisionDamp * prevCVel;\r\n}\r\n\r\n//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\nfor (i=0; i<nmodes; i+=1) \r\n{\r\n\tb1 = peek(B1, i);\r\n\ta1 = peek(A1, i);\r\n\ta2 = peek(A2, i);\r\n\tvWin = peek(Win, i);\r\n\tvWout = peek(Wout, i);\r\n\tvCWout = peek(CWout, i);\r\n\tvCWin = peek(CWin, i);\r\n\t\r\n\t// read this resonator's data:\r\n\ty2 = peek(hy2, i);\r\n\ty1 = peek(hy1, i);\r\n\t\r\n\t// compute next y:\r\n\t// the input force has two components:\r\n\t// the external force + the collision force\r\n\ty = b1 * ( vWin * x + vCWin * collisionForce ) + a1*y1 + a2*y2;\r\n\t\r\n\t// update this resonator's history:\r\n\tpoke(hy2, y1, i);\r\n\tpoke(hy1, y, i);\r\n\r\n\t// mix modes\r\n\tdispl += y * vWout;\r\n\tcdispl += y * vCWout;\r\n}\r\n\r\nprevCVel = (cdispl - prevCDispl);\r\nprevCDispl = cdispl;\r\n\r\nout1 = displ * 0.1;\r\nout2 = cdispl;\r\nout3 = collisionForce;\r\n",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 25.99999988079071, 55.0, 822.0, 676.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 31.0, 30.0, 22.0 ],
									"text" : "in 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 33.333333849906921, 768.333333492279053, 37.0, 22.0 ],
									"text" : "out 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 2 ]
								}

							}
 ],
						"editing_bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
					}
,
					"patching_rect" : [ 33.999999046325684, 519.666666269302368, 613.833332180976868, 22.0 ],
					"text" : "gen~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 733.0, 138.0, 22.0 ],
					"text" : "buffer~ Win @samps 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 29.5, 893.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 936.500020861625671, 572.0, 146.0, 22.0 ],
					"text" : "buffer~ freqs @samps 64"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 140.5, 775.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.500020861625671, 529.0, 91.0, 22.0 ],
					"text" : "sizeinsamps $1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "threshold",
					"id" : "obj-24",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.5, 828.5, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "lookahead",
					"id" : "obj-57",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.5, 799.5, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "postamp",
					"id" : "obj-59",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.5, 858.5, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 3,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 6,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 2,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"order" : 7,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 5,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 4,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 2,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
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
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"order" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-66", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-43" : [ "threshold", "threshold", 0 ],
			"obj-56" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ComputeStringCollisionModes.js",
				"bootpath" : "~/My Drive/Koncon/KC-SO-PHM2/13 - Modal Synthesis II - Membranes",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
