{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 429.0, 92.0, 1107.0, 885.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 245.0, 499.0, 80.0, 13.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-71",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 154.0, 770.0, 275.0, 40.0 ],
					"text" : "• toggle verbose output from the munger object (enabled by default)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-69",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 154.0, 701.0, 276.0, 55.0 ],
					"text" : "• enable only one grain per channel--useful in high density loudspeaker arrays. (disabled by default)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-47",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 129.5, 585.0, 297.0, 70.0 ],
					"text" : "• assign gains per channel (only used when having more than a stereo setup). Maximum number of channels in 1.3.2 is 128"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 59.357146999999998, 633.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.0, 127.0, 82.0, 22.0 ],
					"text" : "maxvoices $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 533.0, 98.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.357146999999998, 660.0, 299.0, 22.0 ],
					"text" : "spatialize 1 0.5 2 0.5 3 0.5 4 0.5 5 0.5 6 0.5 7 0.5 8 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 59.357146999999998, 690.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.357146999999998, 721.0, 87.0, 22.0 ],
					"text" : "discretepan $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 60.0, 752.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 783.0, 68.0, 22.0 ],
					"text" : "verbose $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 511.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 275.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 103.0, 469.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 350.0, 348.5, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 341.0, 222.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 163.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 8,
					"id" : "obj-114",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 8,
					"numoutlets" : 11,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 174.0, 1172.0, 136.0, 83.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "live.gain~"
						}

					}
,
					"varname" : "live.gain~[1]"
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
					"patching_rect" : [ 28.0, 528.5, 164.0, 23.0 ],
					"text" : "note 12 0.9 0 20 80 0.3 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 499.0, 80.0, 23.0 ],
					"text" : "oneshot $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.5, 869.0, 278.0, 25.0 ],
					"text" : "• impolitely clears the internal sample buffer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 869.0, 41.0, 23.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.5, 841.0, 397.0, 25.0 ],
					"text" : "• post the values of user controlled variables to the MAX window"
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
					"patching_rect" : [ 445.0, 841.0, 41.0, 23.0 ],
					"text" : "state"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.0, 222.0, 39.0, 23.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 323.0, 275.0, 19.0, 23.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 294.0, 250.0, 57.0, 23.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"mode" : "basic",
						"originallength" : [ 463571.352381000004243, "ticks" ],
						"originaltempo" : 120.0,
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"text" : "sfplay~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 46.0, 1046.5, 54.0, 42.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-45", "live.gain~", "float", -3.872470140457153, 5, "obj-85", "flonum", "float", 0.0, 5, "obj-84", "flonum", "float", 100.0, 5, "obj-83", "flonum", "float", 5.0, 5, "obj-82", "flonum", "float", 0.0, 5, "obj-81", "flonum", "float", 0.0, 5, "obj-80", "flonum", "float", 50.0, 5, "obj-79", "flonum", "float", 0.0, 5, "obj-62", "number", "int", 10, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "obj-39", "flonum", "float", 300.0, 5, "obj-25", "number", "int", 0, 5, "obj-111", "flonum", "float", 0.0, 5, "obj-17", "flonum", "float", 1.0, 5, "obj-110", "flonum", "float", 0.0, 5, "obj-114", "live.gain~", "float", -33.094684600830078, 5, "obj-116", "toggle", "int", 1, 5, "obj-118", "toggle", "int", 0, 5, "obj-121", "toggle", "int", 0, 5, "obj-127", "toggle", "int", 1, 5, "obj-129", "toggle", "int", 1, 5, "obj-46", "toggle", "int", 1, 5, "obj-61", "toggle", "int", 0, 5, "obj-58", "number", "int", 30 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 100.0, 5, "obj-83", "number", "float", 5.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 100.0, 5, "obj-79", "number", "float", 0.0, 6, "<invalid>", "gain~", "list", 97, 10.0, 6, "<invalid>", "gain~", "list", 97, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 1000.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 50.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 92, 10.0, 6, "<invalid>", "gain~", "list", 92, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 100.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 50.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 92, 10.0, 6, "<invalid>", "gain~", "list", 92, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 1000.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-85", "number", "float", 100.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 50.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 102, 10.0, 6, "<invalid>", "gain~", "list", 102, 10.0, 5, "obj-62", "number", "int", 1, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 300.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-85", "number", "float", 100.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 100.0, 5, "obj-80", "number", "float", 150.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 102, 10.0, 6, "<invalid>", "gain~", "list", 102, 10.0, 5, "obj-62", "number", "int", 1, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 1000.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 20.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 50.0, 5, "obj-80", "number", "float", 300.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 83, 10.0, 6, "<invalid>", "gain~", "list", 83, 10.0, 5, "obj-62", "number", "int", 20, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 1000.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 300.0, 5, "obj-83", "number", "float", 80.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 50.0, 5, "obj-80", "number", "float", 300.0, 5, "obj-79", "number", "float", 0.78, 6, "<invalid>", "gain~", "list", 83, 10.0, 6, "<invalid>", "gain~", "list", 83, 10.0, 5, "obj-62", "number", "int", 20, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 1, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 1000.0, 5, "obj-25", "number", "int", 0, 5, "obj-22", "number", "float", -1.0, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 404.0, 5, "obj-83", "number", "float", 0.780001, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 70.0, 5, "obj-79", "number", "float", 0.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 2, 5, "obj-44", "number", "int", 50, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 3000.0, 5, "obj-25", "number", "int", 1, 5, "obj-22", "number", "float", 0.19, 5, "<invalid>", "toggle", "int", 1, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0, 5, "obj-9", "toggle", "int", 1 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 119.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 70.0, 5, "obj-79", "number", "float", 0.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 2, 5, "obj-44", "number", "int", 100, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 3000.0, 5, "obj-25", "number", "int", -1, 5, "obj-22", "number", "float", 0.139999, 5, "<invalid>", "toggle", "int", 0, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0, 5, "obj-9", "toggle", "int", 1 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 200.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 0.0, 5, "obj-80", "number", "float", 0.0, 5, "obj-79", "number", "float", 0.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 2, 5, "obj-44", "number", "int", 100, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 3000.0, 5, "obj-25", "number", "int", 1, 5, "obj-22", "number", "float", 0.14, 5, "<invalid>", "toggle", "int", 0, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.57, 5, "obj-9", "toggle", "int", 1 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-85", "number", "float", 0.0, 5, "obj-84", "number", "float", 425.0, 5, "obj-83", "number", "float", 1.0, 5, "obj-82", "number", "float", 1.0, 5, "obj-81", "number", "float", 100.0, 5, "obj-80", "number", "float", 0.0, 5, "obj-79", "number", "float", 0.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 6, "<invalid>", "gain~", "list", 101, 10.0, 5, "obj-62", "number", "int", 10, 5, "<invalid>", "toggle", "int", 1, 6, "<invalid>", "gain~", "list", 0, 10.0, 5, "obj-48", "umenu", "int", 2, 5, "obj-44", "number", "int", 100, 5, "<invalid>", "toggle", "int", 1, 5, "obj-39", "number", "float", 3000.0, 5, "obj-25", "number", "int", 1, 5, "obj-22", "number", "float", 0.02, 5, "<invalid>", "toggle", "int", 0, 5, "obj-17", "number", "float", 1.0, 5, "obj-15", "number", "float", 0.0, 5, "obj-9", "toggle", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 594.0, 642.0, 297.0, 55.0 ],
					"text" : "• set the baseline gain for grains (1 by default), and set a randomization range around that baseline (0 by default)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-110",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 671.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 493.0, 671.0, 90.0, 23.0 ],
					"text" : "rand_gain $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 642.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 493.0, 642.0, 56.0, 23.0 ],
					"text" : "gain $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 536.0, 573.0, 540.0, 55.0 ],
					"text" : "• set the playback position within the buffer (between 0 and 1). -1 = randomized position (which is the default). it is possible to get some interesting stretching effects by scrubbing through this with \"record\" on, and some good transposition effects with \"record\" off"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-20",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 533.0, 520.0, 243.0, 40.0 ],
					"text" : "• turn recording on and off. turning off freezes the buffer. on (1) by default"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-111",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 573.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-112",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 604.0, 80.0, 23.0 ],
					"text" : "position $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 541.0, 72.0, 23.0 ],
					"text" : "record $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-25",
					"maxclass" : "number",
					"maximum" : 1,
					"minimum" : -1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 408.0, 39.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 115.428573999999998, 1021.5, 19.0, 23.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 46.0, 1021.5, 64.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 358.0, 89.0, 64.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 533.0, 471.5, 329.0, 40.0 ],
					"text" : "• sets the minimum allowable grainsize. useful when randomizing with the \"grain size variation\" input"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 480.0, 69.0, 23.0 ],
					"text" : "minsize 5"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 586.0, 415.5, 346.0, 40.0 ],
					"text" : "• allows grains to play backwards and forwards (0), just forwards (1), or just backwards (-1). (0) by default."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 437.0, 128.0, 23.0 ],
					"text" : "ambidirectional $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.0, 156.0, 98.0, 23.0 ],
					"text" : "maxvoices 30"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 706.0, 54.0, 23.0 ],
					"text" : "smooth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 446.0, 733.0, 68.0, 23.0 ],
					"text" : "tempered"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 446.0, 812.0, 491.0, 23.0 ],
					"text" : "scale 0 -2 2 -4 4 -6 6 -8 8 -10 10 -12 12 -14 14 -16 16 -18 18 -20 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 446.0, 786.0, 291.0, 23.0 ],
					"text" : "scale 0 4 4 4 7 7 11 11 14 18 -12 -12 -12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 446.0, 760.0, 143.0, 23.0 ],
					"text" : "scale 0 4 7 -2 12 15"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 344.0, 64.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 370.5, 131.0, 23.0 ],
					"text" : "delaylength_ms $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 306.0, 69.0, 23.0 ],
					"text" : "power $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 441.0, 52.5, 153.0, 40.0 ],
					"text" : "send some messages...."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 201.5, 39.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-48",
					"items" : [ "none", ",", "sequence", ",", "soundfile", ",", "adc", "input" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 262.0, 127.0, 82.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 236.0, 340.5, 25.0, 23.0 ],
					"text" : "20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 216.0, 371.0, 39.0, 23.0 ],
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 216.0, 307.0, 35.0, 23.0 ],
					"text" : "* 2."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.5, 1130.0, 109.0, 40.0 ],
					"text" : "'munged' signal."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 184.5, 131.0, 64.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.0, 279.0, 38.0, 23.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"coll_data" : 					{
						"count" : 16,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 45 ]
							}
, 							{
								"key" : 1,
								"value" : [ 45 ]
							}
, 							{
								"key" : 2,
								"value" : [ 57 ]
							}
, 							{
								"key" : 3,
								"value" : [ 57 ]
							}
, 							{
								"key" : 4,
								"value" : [ 45 ]
							}
, 							{
								"key" : 5,
								"value" : [ 57 ]
							}
, 							{
								"key" : 6,
								"value" : [ 57 ]
							}
, 							{
								"key" : 7,
								"value" : [ 47 ]
							}
, 							{
								"key" : 8,
								"value" : [ 55 ]
							}
, 							{
								"key" : 9,
								"value" : [ 47 ]
							}
, 							{
								"key" : 10,
								"value" : [ 59 ]
							}
, 							{
								"key" : 11,
								"value" : [ 60 ]
							}
, 							{
								"key" : 12,
								"value" : [ 60 ]
							}
, 							{
								"key" : 13,
								"value" : [ 57 ]
							}
, 							{
								"key" : 14,
								"value" : [ 57 ]
							}
, 							{
								"key" : 15,
								"value" : [ 57 ]
							}
 ]
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 216.0, 222.0, 51.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"text" : "coll"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 216.0, 192.5, 104.0, 23.0 ],
					"text" : "tempo 60 1 16"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 216.0, 401.0, 81.0, 23.0 ],
					"text" : "cycle~ 200"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-62",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 447.0, 127.0, 39.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 156.0, 70.0, 23.0 ],
					"text" : "voices $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-64",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.57144199999999, 902.0, 74.0, 55.0 ],
					"text" : "grain pitch variation"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-65",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 406.142853000000002, 902.0, 49.0, 55.0 ],
					"text" : "grain \npitch"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 317.214293999999995, 902.0, 82.0, 55.0 ],
					"text" : "grain length variation"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-67",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.357146999999998, 902.0, 73.0, 55.0 ],
					"text" : "grain rate variation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 222.0, 467.0, 82.0, 23.0 ],
					"text" : "selector~ 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-78",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 231.0, 90.0, 23.0 ],
					"text" : "ramptime $1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-79",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 486.57144199999999, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 333.714293999999995, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-81",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.857146999999998, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 563.0, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-83",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 410.142853000000002, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-84",
					"maxclass" : "flonum",
					"maximum" : 20000.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 257.285706000000005, 961.0, 46.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-85",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 104.428573999999998, 961.0, 40.0, 23.0 ],
					"textcolor" : [ 0.921569, 0.917647, 0.933333, 1.0 ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.741176, 0.611765, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 28.0, 993.0, 553.999994199999946, 23.0 ],
					"text" : "munger~ 3000 8 50"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-87",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 76.428573999999998, 902.0, 84.0, 55.0 ],
					"text" : "grain rate or separation"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-88",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 257.285706000000005, 902.0, 46.0, 55.0 ],
					"text" : "grain\nlength"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-89",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 563.0, 902.0, 51.0, 55.0 ],
					"text" : "stereo spread"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 216.0, 250.0, 39.0, 23.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-91",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.125, 1130.0, 77.0, 40.0 ],
					"text" : "dry signal."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 238.0, 163.0, 139.0, 25.0 ],
					"text" : "• play sequence..."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-93",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 316.0, 307.0, 113.0, 40.0 ],
					"text" : "... or plug right in."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-95",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 245.0, 52.5, 106.0, 40.0 ],
					"text" : "choose an input"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-96",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 116.0, 848.0, 305.0, 40.0 ],
					"text" : "PRIMARY CONTROLS (first four values are in ms)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-97",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 638.0, 115.0, 420.0, 85.0 ],
					"text" : "• the \"voices\" message tells the munger how many grains to allow simultaneously (10 by default). the more, the more expensive. you can smoothly sweep this parameter. \"maxvoices\" sets an upper limit to this, and will have some impact on performance if set really high (20 by default). munger is hardwired for total max of 1000 voices."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-98",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 214.0, 509.0, 40.0 ],
					"text" : "• \"ramptime\" sets the length (in ms) of the ramping envelope on each grain. if the grain is smaller than the ramptime, the ramptime will be scaled to half the grain size."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-99",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 533.0, 292.0, 356.0, 25.0 ],
					"text" : "• turn the munger on and off, to save CPU (1 by default)."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-100",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 586.0, 336.5, 465.0, 70.0 ],
					"text" : "• constrain how far back in time the munger looks for grains. the smaller this is, the smaller the largest grain can be. the munger's argument sets the maximum delay length possible (and the default value for delaylength). this is a super cool parameter to mess with."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-101",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 603.0, 717.5, 378.0, 55.0 ],
					"text" : "• apply pitch sieves to the grains. control how deeply into these sieves to go with the \"grain pitch variation\" input (below). floats work too. set to \"smooth\" (no sieve) by default."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-102",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 1020.0, 239.0, 145.0 ],
					"text" : "• optional arguments: maximum delay, number of channels (2-128), and maximum voices. Maximum delay sets the maximum delay time (in ms) and allocates memory, so be careful with large values. (3000ms by default). this also contrains the maximum grain size, to 1/3rd the maximum delay time."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-103",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 913.0, 446.0, 175.0 ],
					"text" : "• mostly self explanatory. control how much separation the grains should have and how much to randomly vary the separation. similarly with grain size. transpose all outgoing grains with the \"grain pitch\" multiplier. vary the grain pitch, either randomly or through \"pitch sieves\" (set with \"scale\" messages) using the \"grain pitch variation\" input (if you use a \"scale\" message, the \"grain pitch variation\" parameter will control how far into your scale the munger will look for notes; try gradually increasing this value and listen as notes appear). finally, spread the grains out across the stereo field (0 is center, 1 is spread completely). Spread only works in stereo setup, while \"spatialize\" message should be used for multichannel setups."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-104",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.428573999999998, 1033.0, 179.0, 85.0 ],
					"text" : "try some presets\r\r(the last row is particularly cool with soundfiles, of voices for example)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-105",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 238.0, 520.0, 188.0, 40.0 ],
					"text" : "transp, gain, pan, attack, decay, sustain level, release"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-106",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.5, 259.5, 189.0, 205.0 ],
					"text" : "turn off continuous grains, and play them one-at-a-time. needs to be used in conjunction with the note command (disabled by default)\n\nnote args: transposition, gain, pan (int values denoting channels with 0 being the first channel), attkT, decayT, susLevel, relT, direction [-1/0-1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 22.625, 1172.0, 136.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "live.gain~"
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 22.625, 1230.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-22",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 62.0, 212.0, 66.0 ],
					"text" : "• munger takes a signal input and granulates it, allowing for different transposition and granular sampling effects.",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 48.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.0, 3.0, 212.0, 62.0 ],
					"text" : "munger~",
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 948.125, 1140.0, 140.0, 87.0 ],
					"pic" : "Macintosh HD:/Users/Shared/Max 7/Packages/PeRColate/media/percolate.jpg"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 662.125, 1236.0, 426.0, 36.0 ],
					"text" : "• by dan trueman, music department princeton university\n• munger1~ adaptation and additions by Ivica Ico Bukvic (ico.bukvic.net)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"hidden" : 1,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 632.0, 37.5, 632.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-114", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 3 ],
					"midpoints" : [ 385.5, 457.0, 294.5, 457.0 ],
					"source" : [ "obj-119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 3 ],
					"midpoints" : [ 359.5, 457.0, 294.5, 457.0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 2 ],
					"midpoints" : [ 303.5, 457.0, 273.5, 457.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 502.5, 700.0, 37.5, 700.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 502.5, 666.0, 37.5, 666.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 569.0, 37.5, 569.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 561.0, 37.5, 561.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 562.0, 37.5, 562.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 542.5, 521.0, 37.5, 521.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 520.0, 37.5, 520.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 455.5, 517.0, 37.5, 517.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 455.5, 897.0, 37.5, 897.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 455.5, 900.0, 37.5, 900.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 455.5, 899.0, 37.5, 899.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 112.5, 524.0, 37.5, 524.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 564.0, 37.5, 564.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 564.0, 37.5, 564.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"hidden" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"order" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"hidden" : 1,
					"midpoints" : [ 271.5, 453.0, 231.5, 453.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 225.5, 334.0, 245.5, 334.0 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"hidden" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 454.5, 898.0, 37.5, 898.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 1 ],
					"midpoints" : [ 225.5, 457.0, 252.5, 457.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 568.0, 37.5, 568.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 231.5, 491.0, 32.125, 491.0 ],
					"order" : 2,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 231.5, 556.0, 37.5, 556.0 ],
					"order" : 1,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [ 456.5, 563.0, 37.5, 563.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 6 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 4 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 2 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 7 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 5 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 3 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 7 ],
					"hidden" : 1,
					"source" : [ "obj-86", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 6 ],
					"hidden" : 1,
					"source" : [ "obj-86", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 5 ],
					"hidden" : 1,
					"source" : [ "obj-86", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 4 ],
					"hidden" : 1,
					"source" : [ "obj-86", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 3 ],
					"hidden" : 1,
					"source" : [ "obj-86", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 2 ],
					"hidden" : 1,
					"source" : [ "obj-86", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 1 ],
					"hidden" : 1,
					"midpoints" : [ 113.928570599999986, 1140.0, 200.214285714285722, 1140.0 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"hidden" : 1,
					"midpoints" : [ 37.5, 1124.0, 183.5, 1124.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 245.5, 270.0, 225.5, 270.0 ],
					"source" : [ "obj-90", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-45" : [ "live.gain~", "live.gain~", 0 ],
			"obj-114" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "munger~.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0
	}

}
