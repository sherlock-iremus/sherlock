{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 1,
			"architecture" : "x86"
		}
,
		"rect" : [ 1727.0, 30.0, 1182.0, 729.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-89",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.5, 679.0, 113.0, 32.0 ],
					"text" : ";\rchroma1 verbose 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 894.0, 679.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 733.0, 681.0, 129.0, 32.0 ],
					"text" : ";\rchroma1 maxdelay $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-74",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 926.0, 572.0, 157.0, 33.0 ],
					"text" : "prints parameter values to Max window"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.25098, 0.87451, 0.25098, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-76",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.0, 570.0, 93.0, 32.0 ],
					"text" : ";\rchroma1 states"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-67",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 926.0, 613.0, 150.0, 33.0 ],
					"text" : "Resets to default parameters"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-69",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.0, 611.0, 87.0, 32.0 ],
					"text" : ";\rchroma1 reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 197.0, 360.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-55",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 614.0, 150.0, 33.0 ],
					"text" : "resume movement (halt interpolation or gliss)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.0, 612.0, 101.0, 32.0 ],
					"text" : ";\rchroma1 resume"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 578.0, 150.0, 33.0 ],
					"text" : "pause movement (halt interpolation or gliss)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.0, 576.0, 93.0, 32.0 ],
					"text" : ";\rchroma1 pause"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-66",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 489.0, 240.0, 67.0, 34.0 ],
					"text" : "(default: \nGaussian)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 222.0, 141.0, 20.0 ],
					"text" : "Harmonic unit generator:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"items" : [ "Gaussian", ",", "Rectangle" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 552.0, 244.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.0, 267.0, 125.0, 32.0 ],
					"text" : ";\rchroma1 harmgen $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 567.0, 543.0, 150.0, 33.0 ],
					"text" : "stop movement (halt interpolation or gliss)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 464.0, 541.0, 83.0, 32.0 ],
					"text" : ";\rchroma1 stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 980.0, 438.0, 183.0, 34.0 ],
					"text" : "args: \n<time(ms)> <destination (list)>"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 502.0, 150.0, 20.0 ],
					"text" : "crossing... !"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-47",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 94.0, 494.0, 159.0, 33.0 ],
					"text" : "For realtime generation, evade lists and use buffers!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 494.0, 83.0, 20.0 ],
					"text" : "ATTENTION:",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 155.0, 86.0, 20.0 ],
					"text" : "a note (Hz)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 431.0, 120.0, 86.0, 20.0 ],
					"text" : "a note (MIDI)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 458.0, 195.0, 81.0, 20.0 ],
					"text" : "a chord (list)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 445.0, 86.0, 150.0, 20.0 ],
					"text" : "silence"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 1,
							"architecture" : "x86"
						}
,
						"rect" : [ 1017.0, 44.0, 654.0, 766.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 87.0, 569.0, 47.0 ],
									"text" : "In order to make non-reactive parameter change, you can just add a \"_state\" to the message name. Doing this will change the internal state of Chromax but NOT instantaneously process the spectrum. This is useful for preparation. All messages below have a \"_state\" counterpart."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-26",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 37.0, 569.0, 47.0 ],
									"text" : "Upon each generation, Chromax uses a set of internal parameters listed below that can be changed at any time. All these parameters are REACTIVE: They immediately re-generate the previous list processed by Chromax."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Geneva",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 151.0, 200.0, 21.0 ],
									"text" : "Tuning:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-19",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 292.0, 686.0, 337.0, 47.0 ],
									"text" : "You can shift or stretch an internal template. The shirt & stretch commands use the following formula which is the same as the one in OpenMusic's OM Chroma library:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 654.0, 150.0, 20.0 ],
									"text" : "(default: shift 1. stretch 2.)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-17",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 571.0, 337.0, 60.0 ],
									"text" : "When using the [harmweights] message, the number of weights should correspond to the number of harmonics in the system. Otherwise, a \"harmonic mismatch\" error will appear in Max window."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-15",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 505.0, 337.0, 60.0 ],
									"text" : "Chromax enforces an descending logarithmic envelope by default over each pitch generation. You can modify this using the [env $1] message; OR define a relative weight list for harmonics through the [harmweights] message."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 158.0, 472.0, 150.0, 20.0 ],
									"text" : "(default: logarithmic -0.05)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.0, 396.0, 337.0, 33.0 ],
									"text" : "You can also set a harmonic list using a list of INT or FLOAT values (therefore, have an inharmonic list of harmonics!)."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.0, 346.0, 330.0, 47.0 ],
									"text" : "You can set the number of harmonics generated for each pitch reference. By default, Chromax generates 15 harmonics per pitch."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 320.0, 140.0, 20.0 ],
									"text" : "(default: 15 harmonics)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Geneva",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 320.0, 84.0, 21.0 ],
									"text" : "Harmonics:"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 205.0, 153.0, 90.0, 20.0 ],
									"text" : "(default: 440.0)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Geneva",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 654.0, 156.0, 21.0 ],
									"text" : "Spectral Shift & Stretch:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Geneva",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 472.0, 146.0, 21.0 ],
									"text" : "Harmonic Envelopes:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Geneva",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 216.0, 200.0, 21.0 ],
									"text" : "Variance / harmonic bandwidth:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"frgb" : 0.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2.0, 3.0, 374.0, 24.0 ],
									"text" : "Chromax Harmonic Generator Parameters:"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 613.0, 229.0, 32.0 ],
									"text" : ";\rchroma1 harmweights 9 1 8 2 7 3 6 4 5 5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-68",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 424.0, 192.0, 32.0 ],
									"text" : ";\rchroma1 harmlist 1.3 3.7 5.1 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 383.0, 162.0, 32.0 ],
									"text" : ";\rchroma1 harmlist 1 3 5 7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-24",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.0, 244.0, 330.0, 60.0 ],
									"text" : "Variance is the bandwidth of each generated harmonic. Its value is in MIDI steps (1.0= 1 semi-tone) and in musical step. You can however set it in herz for homogeneous non-musical spectral scaling."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 146.0, 187.0, 97.0, 20.0 ],
									"text" : "set tuning base "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 178.0, 130.0, 32.0 ],
									"text" : ";\rchroma1 tune 440."
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 5135, "", "IBkSG0fBZn....PCIgDQRA..BPG...vLHX....fGqVoL....DLmPIQEBHf.B7g.YHB..SXbRDEDU3wY6c1DhsbTEG++8lAtxfC9dPFyhIK5.xraLaFvMC5lQQgjMt3IQP7BQhxKqBxassa0YgahvKaDD7I3NYbgnt4ohB9EijUt59PSP7KtQBHJn45hpOzmtlp5tppqtq5184GzL8buUWc008Tm5zm5TUAHHHHHHHHzOtF.kotPLgo..6.vpDWNDDDDDDDh.K.vV.rApN3Wj1hCVTUN1lAkk8EdHT+9sE.2340sC.GMDEJAAAAAAgwk6CUG66.vxDWVtACigkmBfGO.4aH7H.bQDyuKqxycU+0Gn56T+6tffffffPD3Jj9N1ewpxPw.j2jGHSsgKEUkixHmuqqx2K875VgvLDTPPPPPPHCg7RWJM3YGTdQK1vGF2TCUOGSOzAT6osPF9zGziqUPPPPPPHivEC5NsJc2GJCRZKsKpR+EU+cA.NFJOSUBfCzR+8pt+m4QY9Tn7H04.3PCe+gUGWTk2afxiTlLb4tUo6Xs7mJ+5kWNGfa+rp+8GUcuIOERk4tLflJWWTctIVhlFrVTkdWqKEuzIHHHHHLQnMC5JPcL1sF0CM5tpy04b12+P147+uT6ZnO2EODdBK+tB0dmhObiKQy6q9A+9bLpM3SuLeE6bcCpN.0wt1Nsy44eYKkC85A9y31pzbMKuu1PZKX4GcM1JK1XKxCOXJHHHHHHzCrYPGY7zFbaOOQF9vMp6.Xd3MICM.TdiS23nMUGtvNnFlPhifYiinxKcus4gqMP87S48N1+Se+Nn79FwJVZ4dB6.Cok3LzzSX1lfFWxxaZYE4P1moecOf8cqYeNYTWgk6io7H0wXnffffffPOvlAcj2uJLbMTrowMxn.l8jDktSrb+okNktftmWCkARzvpdMLaDE2ScskezvltC2do+39PYbD2PJpdgLN6Hn7LYaS9BWheNx3T80HNxPwGX3ZnxRo1mWB2MnKGhgRAAAAAAgdhoNz4FrYJFx3FKsrkO6.T6kLSdkhtOt5gtR18vjmo3TftiOLpLQ4aWwdlsgyk7zms3siL7xT79QPdJ6pNJClJK5P04sE+eDhAcBBBBBBS.r0gts3GCnoAe7q6wrOeK6badmCPYriKFzQSPgUPY30ZT6UrBComLPh6ULakCJe5Z2Sfdt8YQ70jgWzjkfSadD0DEvrAqjm9ng99tncC6VCwfNAAAAAg8dHC5z8f1031S3.h6BydGZKTwU2JnlvAtrbX3xBJ7ZXehDXyHHcuhU.yFtXK1+LQWKCJ20PYjhEwGx9rsFRGEWh1L57Anow0lLXEndxbP+tYKt9HnemygEdYAAAAAAg.3XT6cJxPLBtmktP6Zr44MJX7uAJu0cS0wUv9vYRFlzlWjnzrl8YqPsGAMAOl1HCPMEGZT7y45PcRFLwqSVhZiN0ymBs6Mc85OujgeWilFWw+MhOjs1V+43O2T8Va3yPdKHHHHHHjYv81DM7n5F7r.liasqwsiGrCMjN8CSKdvjgLlL1hfuNtoWNrYH3kZocskzQqCds4EKcJMTVHuSpyBsx9VXOV5NElq2djgqgO6g4Pq8dzQawsWApMlWPPPPPPXFvppCaCMG4oGcCHVBkWjng1yzvvRdZqq33ZYUY3vVJGbVzQYlnqXmqs71k7mtGtdenz10hZrs6KU15BxKeBi.Kf+6OaBBiAKgHaJDNhtsvIGa64xjEfFpQSSxBJP9ccXOE5Ojm7h8VQlfA3qIMRvJJjavGdkPd6Vg4Khts9Qt11iOTeWU8+milK9ssMrpz0e9vVLEPsLTzLft.JWvtEJq5uWrx3I.7Friwll6AU2yiQ89RmsUV6TRADYlPn.CS8Fea3wk06n4BEPjSswXqaapRt11aATS9gG.Ube8Hnh2rKfakSJt2DuFMbDcugxsXmu2vIaPrJn5ihQ3dwq+4Gs8lT9xcQ6AloKHxLgwPWuQaoMxdAnBQNscBU2VLzgj6bJ7Kv7mps8NBiSeeyUNDcHm4iayOA.uU04eX.7tn4Tl8o.v64SoahwCAvq.fuJru48FSNF.uJ.d+.3Ky97mE.ucDx+a.vy2y7TjYBiwpdarkYyUD4z1IT4jXnCIm4..7sAvKAf2A9M5HgVm9z.3m6Q5ElO7l9XP2iAvGs57EnYiUf509l4H7NDRQ8vV.bmpyiQmO7mG.fmC.OIf7oOxLq.v+t57OH.9aAb+2WYrZqsD.+upyma0wbDca1ITcawRGRNwxpimA.uFZ9hzOApmQexqPZ689fDJ.Bl4u6ZBWgaudzbE6yl6yvEZckYcBt27.U1ms0j1fu.T105giM5qLSIKs9LbF66L1s0nUa9MckvHy4HO9cUzs0NgpaKF5PxIrsWfRGgz9IUs8Dl4bNLGiVmf7LH7GS3yPnTrmpwWDFueDy2hp7NzYiUekY1foSmA9vX2Vi19b1gt2fqiETmi4PLDI51rSe0sUf9oCI23BnhuxSgp9fOAGBwnrTz1KEbOjVmdzFEP865EP8RHyBJw7zaIt.In9vtR3.AsksLVSFCWoDgKyvUzM2FpqRL9s0n8hvwxSAgrQYOTTBQ2lMRstsbm9ZPGv321KETf5Em3XNo85CzDSgp6482L4W9UnUk34l2R5B9FcbprtmKHlBODZi9Hyv2FUh0rLjh+kP4fdd8tRJZqw6XZLtm4jAc4jtsbRFMGzsk6DCC5F61doBJzFxAC5nvTRuuEZHvyMmiDUHkuzgrfRVCW.HEvietb5M75qLSI6Zi0Jqde5bhLvbnqiSYaM5dNFAbctXPWtoaKmjQSsts8AhgAc.iaauTA0VKGLnijsMo+gFwq8xXm0k2l6oYm+NntAdpU9kC7JU+8M5Y9bHTt.97p+5Zr67QXm+Mq96RnTted0gOwAzwrxPe98suxLed14+1dTN37Sq96eE90g4o.3OTc9OJRkEajx1ZT8yqNB2qbgbS2VNIiFptsXoCYNwbrsmINEJistOTwzVW1mbWTuqVbDTxauHTCicaKvw+op+9AL7cT6mbaKZqWnOlx1NhYP3uuA+s6ew.yiknN1BzO1htMFiG+bTiAS40Mn6FGTrbvO7wXvPkYJb75hgWT3CulKcXNDC8qN4RaswziLozCc4R8sMxAYzP0s0WcH6aDKOzMG7FZadnq.0O+qQyE1aSxeKfZFouq5uOlk9sryaqOuis78T6ubvShQi6AkKG4qd5jBiG.0PhcEl2AQLeZ4WDv0y2JctBMEt3wuRaFvXqiHZqZgmOO1TFTA86L03gaHnqDpLygP0QPogqcC6Zouuu3ZGligwb.4SaM9y6PGyTozftbo9tMRsLZH51hgNj8MhkAciYauTgMC5n5vM3180QufftQckUeN2KZWxR6JD1vWyMjbpLyruEbu.Mlus0RTumxMDG8clacOTWuDxdxG4o.SdBf2.uvx0SwOG+MRLsGKx+8yzajPJuWy9LdGJg3Qr9Hyv6ncn1W.6pCywxXNcRUaMflufQw.euxkXnKk02cQJkQ8U21PnCYefXYP2X11KUXyfNRNonkqQWFh56j2lkZODpNE9RzStoKHp3pKL04HOSuN5KLkCwQeJeb2j6a9ve1L8l.aXe+IVxC88xUaoiuHoZpbRcpQvWxPBccBKTYF8qcHm0W15vj2Q40C382DgTusDp1ZGg9UewUdNzAmctXPWH02Gh556g1PkTIi5qtsgPGx9.wxftwrsWpvjAc7maSu3.ewblKGRxm75J5kPVGPYixuqQdsRQDc3ML8QfkO918giFvi9ZrPeLnaM6ZM81.bE41fG6cksjNddoWNM0HianXHcVDpLCPyUs+1d1iEbCmOFMikiw1XNeq2VAywe4FD1aXxUtNzwORNXPmu027Eva9wPGqcoPF0GcaCgNj8EFBC5lTwtECadnqs9A40Kb4P9p6.+HjYlJ8xH7QC5BLQW6E4Brt9.xsptOB44N8YaaYMZJH9.nTVyeKESCeJG9021vhzlARTL1waLw6.onixfIBQlgfup8OVMn3OuorSHep23F99.n98eAZNrA9FCXwnSEt2qZ6fdV25w0Dau05S8cItcahCQsA088EW6hwVF0GcaCgNDhb7E44HFz4GldAHpMjoYUJOFv4TT8YqpRisI3Par.0dn+LnzgR5htAs6jj8VVi5JTebELM0g6xnj8Y5iAcbEAl7vRQGWOWPus6OenccwaH5u4SHrFgIy.zb3gGp3myD50+of0v85MxC3lhcJtQw9Dam8cXex8PjPm0vsmW9ykI8YTmBCcGwioLZezsECcH.sqiLWjijgb0MnIo.0ODO7A3N.hqym2tSObhnXNbKpmkq2.kwgqQ2FsayCe7i8xshstT3+IXm+q7HeuFSaWsy4eFv071.36BfWxv2U.kxgWE0qsb5vE7skFflqqQeCGJWeIKWqODpLC.vKyN+2E382Wz2lWJpNdxHc+Ibsdq..ezpy+BF99eCTqoZ2A.eZ.78Bnr7zcmjaw+.JYZW3DT+L3507t.387sP0BtVe+iq96aTUFz4iCfeM.9Z.3qGmh1sHUxngnaKF5P..9KvcYCeH1xQwlPZ6k67x.30gRuzyC05r3SA0uCuGTF08U.vOS659A.3y.f+k1mSF8dGTqGAU48K.fuE.dNXu8wmygx7a4PZ16XCB6s8mCPuEaeB52yPy0PG8CawBEO1oJZI+44kKC0fuo2DgJyjh8uUt2rdDZ9agsIYxPgq0atDeSTbS5iWCF6g8gda8TgK02tTmv8RyP7V8oPFsO51hgNj8EjgbM9rp5v1DNhBqjWTKMKfpcLEqqi4pSP1PacbrD0FK7N.3+5Pd8Z.3Y.vOD.+jdV1VBfueOyi13cAvmMB4ycfprFxa88l.3iUc9gP4t3Wm88OKLqT8EXm+Gsj2bk8OAMeKGRABGdLW86wseqHWvWYFNOK679tya3BmCkmUn62Wr57af5M8dqpxzaOBkEep29TrzYSl66.0yPABW1bHI0yjLWquuC67eokz7mYm+IgpMcrH0xn9paKF5PDl27e536+PU+8InYeX6fpc7un5+mxg6UPvGC6tF9T9ZhVaw2Sn2+bLVJ3qWZtt7EvuFaBb72Huq.EsMObvW014wkAUFzg+l+7gz8gv829zGYFc3ddxT7yEy2dsqIeAelAOFdpym5Mpr01u8gLCr4wxxPun5l5Y4pq02bOvTXIMCk2URoLZH51.hiNj8IhkG5Fy1d66v2kH1.UeamAkG63ibkXPmF7ooeWSMe9vjco1+2GVAkmqFhi9NDx9t5dqafpsfekOCFMonluj.XqCD8Mcb9ypoNHVpkdnkdW6nxGYFc3cFnOTMzybLVE0cclzNlF04S8lKCmZHFz4hwKwhTaPmq02oxftTKiFxNWPrzgrOQrLnaLa6MU3HTO4KoMJf0X5tSazaJgau0voZogrRdJufRBzb081kXmQeVaYSvqKChcI943FOx8TZAL+6oskvApiEWajTB2jYzg2onthQpihXz4uuKKJikQckv85MeMny0Wbg+hBCc7xlZC5Jga02ovftbPF0Wca.wSGx9D7m49HKOls8DlorA18XBG9P3ou9XM0wmmUW5bfOcpssrcvMJzl2WJXog6Ivsvrg17zyuu99lmtJyXBaJFIO20WWnG5Zb2XXTmO0aCkG5JcHeiEo1fNWquGaC5xIYTeelJPbzgrOA2Pr93.iRLsqmDRL5CYmKoGnYGIS8Y3DP8pLsqcLQcjbIZ9lXKQy0EK8MiXBtm2ZqwOeFidNZF2All4rbCIOqp7PcR35ui9JynCUWtsJuVhZuQpurMDBgzQIgK6bGghu0aCULzQxlkNl99PJMnym56w1ftbRF0WcawPGRty8gZsxjhIvcFNdTUZdDb+4dLa6ILCgG389Db6wv8y6S36h35BzbwyU+3Fz911D2fttV.JMsUE01vKs1P584s8CUlgXILqjLVAI7ZzusooRX2P69fu0aTmjs4Q.eMni6Y8BGReeIkFz4S8M2fNauTAO1w5qAcqQ9HiFxBT8ZzOcH4N737cikC99CrKCy7X21SXFxYnVHyzLszDE31J+NCSqFz5vUl6Z8DfpCsSfxXkyp9qquM2Iv8F9qpx6SgacreHK89twiGhLiINt59Okka33a8FeFHFq0gt0r7bLHkFz4S8sKFqwM5aJMCECU2VezgLGYMF21dByPJQsPlqFZvCVehcX327pSM9NzDSUJg+xLB9WuQagNskdxKAttGiFKOL4JjwBtZvYLoD9Ue20vfx2+bmZA9unaa3Yra6ILw4BnTrdCpcsNMzW9nvUWvjBXzodm67YDVaCW5ThXIyL2H1s0JM7cEru2kIRB2iUi4B9KslUNjDi5atAalF5QJ+lhqL8yQcaiIopsmvDFd7NPamFz+6yFjN4UfKP8RYxUQsjluTB+7Hx9Lbk78UlYNQLq23qSX7X65HT2Nrzw7hLHYsG2+8AhY8MUG8XzriWdrJtp+E4rjRLezsM1LUa6IjP3J8NF0CoiuSCadPz11PTLUYJFGMln.wSlYNQAha8F+s60ObMLGn1rSwe2JP7puWf5geT+XCl9qJ8yEcaiIS41dBIDpw5iPyYQYHtXeATJ2lpusZaTf55tobv.qunE2WYl4BCU8VATAs9kP0IgqCcC2aUSsX+BXXpuODJO6Q02Sw5MSTf4gtswhodaOgDBeXCj2DqerFyifHVjYBibpdilDSCwRwRtPNUeuuyZLOzsMFLGZ6IjPN.poe+IPBNy9RITMVCYsXaeBQlILxg5MpCko9LPGHOpumJTh4gtsgj4TaOgQl+OvPCZjcKQZOB.....IUjSD4pPfIH" ],
									"embed" : 1,
									"id" : "obj-55",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 292.0, 735.0, 301.0, 27.0 ],
									"pic" : "Harmonic_eq.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-52",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 147.0, 721.0, 137.0, 34.0 ],
									"text" : "Stretch value \n(default: 2.= no stretch)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 147.0, 686.0, 125.0, 34.0 ],
									"text" : "Freq. Shift value\n(default: 1. = no shift)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 722.0, 136.0, 32.0 ],
									"text" : ";\rchroma1 stretch 2.5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-57",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 683.0, 115.0, 32.0 ],
									"text" : ";\rchroma1 shift 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 346.0, 121.0, 32.0 ],
									"text" : ";\rchroma1 nofharm 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 582.0, 123.0, 20.0 ],
									"text" : "constant envelope"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 513.0, 123.0, 20.0 ],
									"text" : "Logarithmic envelope"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 142.0, 545.0, 123.0, 20.0 ],
									"text" : "Exponential envelope"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-41",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 574.0, 113.0, 32.0 ],
									"text" : ";\rchroma1 env 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 538.0, 126.0, 32.0 ],
									"text" : ";\rchroma1 env 0.05"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 504.0, 130.0, 32.0 ],
									"text" : ";\rchroma1 env -0.05"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 243.0, 152.0, 32.0 ],
									"text" : ";\rchroma1 variance 0.25"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 3.0, 278.0, 158.0, 32.0 ],
									"text" : ";\rchroma1 variance 200 hz"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 354.0, 268.0, 114.0, 24.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 283.0, 537.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 175.0, 205.0, 20.0 ],
					"text" : "Report states (in Max Window)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 176.0, 43.0, 18.0 ],
					"text" : "states"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.0, 663.0, 86.0, 20.0 ],
					"text" : "s chroma1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 362.0, 615.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 362.0, 640.0, 70.0, 18.0 ],
					"text" : "verbose $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-92",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 352.0, 689.0, 358.0, 34.0 ],
					"text" : "Arshia Cont, Ircam - Centre Pompidou.\nSend complains to cont@ircam.fr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-90",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 152.0, 21.0, 150.0, 20.0 ],
					"text" : "beta release, Spring 2009."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 568.0, 198.0, 20.0 ],
					"text" : "unset buffer (get back to list mode)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-87",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 569.0, 41.0, 18.0 ],
					"text" : "buffer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 103.0, 542.0, 150.0, 20.0 ],
					"text" : "or write directly to a buffer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 542.0, 64.0, 18.0 ],
					"text" : "buffer test"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 591.0, 59.0, 18.0 ],
					"text" : "set test 1"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "test",
					"id" : "obj-80",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"offset" : 0.,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 23.0, 614.0, 324.0, 109.0 ],
					"setunit" : 1,
					"voffset" : 1.0,
					"vzoom" : 0.5
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 97.0, 590.0, 111.0, 20.0 ],
					"text" : "buffer~ test 1000 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-78",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 110.0, 294.0, 33.0 ],
					"text" : "Chromax is partially based on OM Chroma generators by Marco Stroppa et al. in Open Music."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-77",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 46.0, 294.0, 60.0 ],
					"text" : "is a template generator useful for FFT processing within pfft~ objects that generates various useful templates through simple and musical controls and adapted for real-time processing and synchronization."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 7.0, 120.0, 33.0 ],
					"text" : "Chromax"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-73",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.0, 482.0, 167.0, 45.0 ],
					"text" : ";\rchroma1 69 90;\rchroma1 gliss 3000 90 69"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-72",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 826.0, 430.0, 151.0, 45.0 ],
					"text" : ";\rchroma1 69;\rchroma1 gliss 3000 81"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-71",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.0, 353.0, 337.0, 60.0 ],
					"text" : "The interpolate command is like the interpolate command but simulates glissandi between harmonic templates! It has been designed to be computationally reliable for real-time intensive processes."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 612.0, 495.0, 156.0, 20.0 ],
					"text" : "or harmonic to harmonic!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 481.0, 180.0, 45.0 ],
					"text" : ";\rchroma1 69;\rchroma1 interpolate 1000 81 90"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-61",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 437.0, 58.0, 34.0 ],
					"text" : "note to \nformant"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-59",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 418.0, 399.0, 59.0 ],
					"text" : ";\rchroma1 69;\rchroma1 interpolate 3000 formant 800. 0. 80. 0.007 1150. -6. 90. 0.007 2900. -32. 120. 0.007 3900. -20. 130. 0.007 4950. -50. 140. 0.007"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 351.0, 460.0, 60.0 ],
					"text" : "The interpolate command takes a time (ms) and a destimation command (harmonic or formant) and interpolates from the previously known template in chromax to the destination in the given time.\nIt has been designed to be computationally reliable for real-time intensive processes."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.0, 325.0, 187.0, 24.0 ],
					"text" : "Glissandi:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 318.0, 186.0, 24.0 ],
					"text" : "Interpolation:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 166.0, 147.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-48",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 251.0, 208.0, 47.0 ],
					"text" : "in ms and used during interpolations and glissandis. Should be set to the hopesize of pfft by the user."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 256.0, 83.0, 18.0 ],
					"text" : "timegrain 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-36",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 43.0, 456.0, 47.0 ],
					"text" : "Formants generated by Chromax are conform to FOFs and the formant command accepts a list of quadruple values consisting of consecutive <frequency amp bw tex> values. The examples below are taken from the CSound book appendix:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1076.0, 105.0, 69.0, 20.0 ],
					"text" : "soprano \"i\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 709.0, 95.0, 364.0, 45.0 ],
					"text" : ";\rchroma1 formant 270. 0. 60. 0.007 2140. -12. 90. 0.007 2950. -26. 100. 0.007 3800. -26. 120. 0.007 4950. -44. 120. 0.007"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1075.0, 149.0, 77.0, 20.0 ],
					"text" : "soprano \"o\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 709.0, 145.0, 357.0, 45.0 ],
					"text" : ";\rchroma1 formant 450. 0. 40. 0.007 800. -11. 80. 0.007 2830. -22. 100. 0.007 3800. -22. 120. 0.007 4950. -50. 120. 0.007"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1072.0, 249.0, 83.0, 20.0 ],
					"text" : "soprano \"a\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 244.0, 357.0, 45.0 ],
					"text" : ";\rchroma1 formant 800. 0. 80. 0.007 1150. -6. 90. 0.007 2900. -32. 120. 0.007 3900. -20. 130. 0.007 4950. -50. 140. 0.007"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1073.0, 202.0, 66.0, 20.0 ],
					"text" : "alto \"a\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 194.0, 357.0, 45.0 ],
					"text" : ";\rchroma1 formant 800. 0. 80. 0.007 1150. -4. 90. 0.007 2800. -20. 120. 0.007 3500. -36. 130. 0.007 4950. -60. 140. 0.007"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 12.0, 186.0, 24.0 ],
					"text" : "Formant Generators:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 353.0, 43.0, 327.0, 33.0 ],
					"text" : "Generate harmonic templates by either a MIDI or MIDI cent notenumber, frequency in hz, or a combination thereof:"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 551.0, 81.0, 129.0, 20.0 ],
					"text" : "ATTENTION:",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-32",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 552.0, 102.0, 129.0, 87.0 ],
					"text" : "For harmonic template, an integer implicates MIDI or MIDICENT, and Float indicates fundamental frequency in Hz."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.0, 79.0, 90.0, 32.0 ],
					"text" : ";\rchroma1 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.0, 186.0, 101.0, 32.0 ],
					"text" : ";\rchroma1 440. 96"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.0, 150.0, 84.0, 32.0 ],
					"text" : ";\rchroma1 440."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 353.0, 115.0, 74.0, 32.0 ],
					"text" : ";\rchroma1 96"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 237.0, 343.0, 84.0, 20.0 ],
					"text" : "r chroma1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 353.0, 12.0, 186.0, 24.0 ],
					"text" : "Harmonic Generators:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 103.0, 304.0, 201.0, 20.0 ],
					"text" : "Max value (for visualisation as list)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 225.0, 201.0, 20.0 ],
					"text" : "FFT size (1024 default)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.0, 200.0, 205.0, 20.0 ],
					"text" : "Sampling Frequency (44.1K default)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 305.0, 89.0, 18.0 ],
					"text" : "maxvalue 100."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 227.0, 55.0, 18.0 ],
					"text" : "size 512"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 201.0, 57.0, 18.0 ],
					"text" : "sr 44100"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Arial",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 146.0, 130.0, 24.0 ],
					"text" : "Initializations:"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.003922, 0.47451, 0.509804, 1.0 ],
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"compatibility" : 1,
					"contdata" : 1,
					"id" : "obj-17",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 21.0, 383.0, 278.0, 97.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"setstyle" : 1,
					"size" : 256,
					"slidercolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.87451, 0.25098, 0.717647, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "list", "symbol" ],
					"patching_rect" : [ 21.0, 360.0, 174.0, 20.0 ],
					"text" : "chromax"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 3,
					"id" : "obj-7",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 5.0, 352.0, 301.0 ],
					"rounded" : 25,
					"shadow" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 3,
					"id" : "obj-16",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 696.0, 4.0, 481.0, 302.0 ],
					"rounded" : 25,
					"shadow" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 3,
					"id" : "obj-20",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 337.0, 308.0, 473.0, 229.0 ],
					"rounded" : 25,
					"shadow" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 3,
					"id" : "obj-21",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 812.0, 307.0, 365.0, 230.0 ],
					"rounded" : 25,
					"shadow" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 31.5, 575.0, 6.0, 575.0, 6.0, 357.0, 30.5, 357.0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 30.5, 601.0, 6.0, 601.0, 6.0, 357.0, 30.5, 357.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 24.5, 345.0, 30.5, 345.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "chromax.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
