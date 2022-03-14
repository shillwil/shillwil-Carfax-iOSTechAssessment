//
//  TestJSON.swift
//  Carfax-tech-assessmentTests
//
//  Created by William Shillingford on 3/14/22.
//

import Foundation

let carListingJSON = """
{
	"listings": [{
		"accidentHistory": {
			"accidentSummary": [
				"No accident/damage reported to CARFAX"
			],
			"icon": "noAccident",
			"iconUrl": "https://media.carfax.com/img/vhr/ico_noAccident.gif",
			"text": "No Accident or Damage Reported"
		},
		"advantage": true,
		"atomOtherOptions": [
			"17 Inch Wheels",
			"3-point Seatbelts",
			"AM/FM Radio",
			"Air Conditioning",
			"Air Filtration",
			"Airbag Deactivation",
			"Anti-lock Brakes",
			"Anti-theft Engine Immobilizer",
			"Armrests",
			"Auto Delay Off Headlights",
			"Auto On/Off Interior Lighting",
			"Auto-dimming Rearview Mirror",
			"Automatic Climate Control",
			"Auxiliary Audio Input",
			"Black Grille",
			"Bluetooth",
			"Body-color Door Handles",
			"Body-color Front Bumper",
			"Body-color Rear Bumper",
			"Braking Assist",
			"Cargo Light",
			"Center Console",
			"Cloth Upholstery",
			"Convertible Soft Top",
			"Cruise Control",
			"Cupholders",
			"Daytime Running Lights",
			"Double Wishbone Front Suspension",
			"Driver Foot Rest",
			"Driver Illuminating Vanity Mirrors",
			"Driver Side Airbags",
			"Dual Front Airbags",
			"Dual Illuminating Vanity Mirrors",
			"Electronic Traction Control",
			"Exterior Entry Lights",
			"Four Wheel Independent Suspension",
			"Front Floor Mats",
			"Front Headrests",
			"Front Stabilizer Bar",
			"Front Struts",
			"Front Ventilated Disc Brakes",
			"Fuel Filler Door Release Remote",
			"HD Radio",
			"Halogen Headlights",
			"Heated Passenger Seat",
			"Hill Ascent Assist",
			"Hill Holder Control",
			"Leather Shift Knob",
			"Leather Steering Wheel",
			"MP3 Playback In-dash CD",
			"Maintenance-free Battery",
			"Manual Folding Side Mirror Adjustments",
			"Manual Seat Adjustment",
			"Metallic Dashboard Trim",
			"Metallic Door Trim",
			"Multi-link Rear Suspension",
			"Panic Alarm Remote",
			"Performance Tires",
			"Power Door Locks",
			"Power Outlet(s)",
			"Power Side Mirror Adjustments",
			"Power Steering",
			"Power SteeringVariable/Speed-proportional",
			"Power Windows",
			"Push-button Start",
			"Rain Sensing Front Wipers",
			"Reading Lights",
			"Rear Disc Brakes",
			"Rear Limited Slip Differential",
			"Rear Locking Differential",
			"Rear Stabilizer Bar",
			"Rear Window Defogger",
			"Rearview Camera",
			"Seatbelt Pretensioner(s)",
			"Side Airbags",
			"Side Impact Door Beams",
			"Speaker Count: 6",
			"Sport Steering Wheel",
			"Sport Suspension",
			"Stability Control",
			"Steering Wheel Mounted Controls",
			"Tachometer",
			"Thermometer",
			"Tilt Steering Wheel",
			"Tire Pressure Monitoring System",
			"Trip Computer",
			"Trip Odometer",
			"Trunk Release Remote"
		],
		"atomTopOptions": [
			"Keyless Entry Remote",
			"Fog Lights",
			"Heated Seats",
			"Front Sport Bucket Seats",
			"Front Bucket Seats",
			"Tinted Glass",
			"Dual Tip Exhaust",
			"Wind Deflector",
			"Alloy Wheels",
			"LED Taillights"
		],
		"backfill": false,
		"badge": "GREAT",
		"bedLength": "Unspecified",
		"bodytype": "Convertible",
		"cabType": "Unspecified",
		"certified": false,
		"currentPrice": 22297,
		"dealer": {
			"address": "91 US HIGHWAY 46 W",
			"backfill": false,
			"carfaxId": "ZVF6RAG001",
			"cfxMicrositeUrl": "https://www.carfax.com/Dealer-European-Auto-Expo-LODI-NJ_VZ6FRAG001",
			"city": "LODI",
			"dealerAverageRating": 4.5,
			"dealerInventoryUrl": "http://europeanautoexpo.com",
			"dealerLeadType": "",
			"dealerReviewComments": "My friend recommended it to me and now its my turn! Extended warranty, free maintenance, fair price and friendly staff - all in one place. It was a great pleasure buying a car from you guys!",
			"dealerReviewCount": 88,
			"dealerReviewDate": "2021-01-12 10:42:44",
			"dealerReviewRating": 5,
			"dealerReviewReviewer": "Esther C.",
			"dealerReviewTitle": "",
			"latitude": "40.880407",
			"longitude": "-74.079633",
			"name": "European Auto Expo",
			"onlineOnly": false,
			"phone": "8334039932",
			"state": "NJ",
			"zip": "07644-3625"
		},
		"dealerType": "USED",
		"displacement": "1.4 L",
		"distanceToDealer": 0.1579388564928069,
		"drivetype": "RWD",
		"engine": "4 Cyl",
		"exteriorColor": "Gray",
		"firstSeen": "2020-10-31",
		"followCount": 8,
		"followedAt": 1610728373000,
		"following": true,
		"fuel": "Gasoline",
		"hasViewed": false,
		"id": "JC1NFAEK3H0108772ZVF6RAG00120201031",
		"imageCount": 34,
		"images": {
			"baseUrl": "https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com",
			"firstPhoto": {
				"large": "https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/1024x768%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=d757f902-1f4b-4871-8f8e-d1454bb01ebe",
				"medium": "https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/640x480%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=b4317bf8-9ce1-41d9-9bb1-05dbf208747a",
				"small": "https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/320x240%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=7b870327-97ea-4aa9-b181-a253c14de5eb"
			},
			"large": [
				"https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/1024x768%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=d757f902-1f4b-4871-8f8e-d1454bb01ebe"
			],
			"medium": [
				"https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/640x480%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=b4317bf8-9ce1-41d9-9bb1-05dbf208747a"
			],
			"small": [
				"https://firebasestorage.googleapis.com/v0/b/carfax-for-consumers.appspot.com/o/320x240%2Fabarth-124-spider-70esimo-anniversario-fiat-car-blac.jpeg?alt=media&token=7b870327-97ea-4aa9-b181-a253c14de5eb"
			]
		},
		"interiorColor": "Unspecified",
		"isEnriched": false,
		"isOemPromoted": false,
		"isOemRefundFlag": false,
		"listPrice": 22297,
		"make": "Fiat",
		"mileage": 7963,
		"model": "124 Spider",
		"monthlyPaymentEstimate": {
			"downPaymentAmount": 2229.7000000000003,
			"downPaymentPercent": 10,
			"interestRate": 4,
			"loanAmount": 20067.3,
			"monthlyPayment": 369.57,
			"price": 22297,
			"termInMonths": 60
		},
		"mpgCity": 25,
		"mpgHighway": 36,
		"noAccidents": true,
		"oneOwner": true,
		"onePrice": 23620,
		"onePriceArrows": [{
				"arrow": "UP",
				"arrowUrl": "https://media.carfax.com/img/vhr/oneprice/icon-up-med.png",
				"icon": "noAccident",
				"iconUrl": "https://media.carfax.com/img/vhr/ico_noAccident.gif",
				"order": 1,
				"text": "No Accidents Reported"
			},
			{
				"arrow": "UP",
				"arrowUrl": "https://media.carfax.com/img/vhr/oneprice/icon-up-med.png",
				"icon": "owner1",
				"iconUrl": "https://media.carfax.com/img/vhr/ico_owner1.gif",
				"order": 2,
				"text": "1-Owner Vehicle"
			},
			{
				"arrow": "UP",
				"arrowUrl": "https://media.carfax.com/img/vhr/oneprice/icon-up-med.png",
				"icon": "personal",
				"iconUrl": "https://media.carfax.com/img/vhr/ico_personal.gif",
				"order": 3,
				"text": "Personal Vehicle"
			},
			{
				"arrow": "DOWN",
				"arrowUrl": "https://media.carfax.com/img/vhr/oneprice/icon-down-med.png",
				"icon": "recall",
				"iconUrl": "https://media.carfax.com/img/vhr/ico_recall.gif",
				"order": 4,
				"text": "Open Recall"
			}
		],
		"onlineOnly": false,
		"ownerHistory": {
			"history": [{
				"city": "Harrington Park",
				"endOwnershipDate": "10/31/20",
				"ownerNumber": 1,
				"purchaseDate": "10/14/16",
				"state": "NJ"
			}],
			"icon": "owner1",
			"iconUrl": "https://media.carfax.com/img/vhr/ico_owner1.gif",
			"text": "CARFAX 1-Owner"
		},
		"personalUse": true,
		"placed": false,
		"recordType": "ENHANCED",
		"sentLead": false,
		"serviceHistory": {
			"history": [{
				"city": "Upper Saddle River",
				"date": "06/08/19",
				"description": "Vehicle serviced <span class='bullet' style='font-weight: bold;'>&#8226;</span> Maintenance inspection completed <span class='bullet' style='font-weight: bold;'>&#8226;</span> Tires rotated <span class='bullet' style='font-weight: bold;'>&#8226;</span> Oil and filter changed.",
				"odometerReading": 5466,
				"source": "Ramsey Alfa Romeo FIAT, Upper Saddle River, NJ, ",
				"state": "NJ"
			}],
			"icon": "service",
			"iconUrl": "https://media.carfax.com/img/vhr/ico_service.gif",
			"number": 2,
			"text": "Service History"
		},
		"serviceRecords": true,
		"sortScore": 185.45,
		"stockNumber": "108772",
		"subTrim": "Unspecified",
		"topOptions": [
			"Keyless Entry",
			"Fog Lights",
			"Leather Seats",
			"Heated Seats",
			"Bucket Seats",
			"Tinted Windows",
			"Folding Mirrors",
			"Dual Exhaust",
			"Wind Deflector",
			"Alloy Wheels"
		],
		"tpCostPerVdp": 0.09,
		"tpEligible": false,
		"transmission": "Automatic",
		"trim": "Abarth",
		"vdpUrl": "https://www.carfax.com/vehicle/JC1NFAEK3H0108772",
		"vehicleCondition": "Used",
		"vehicleUseHistory": {
			"history": [{
				"averageMilesPerYear": 1966,
				"ownerNumber": 1,
				"useType": "Personal Use"
			}],
			"icon": "personal",
			"iconUrl": "https://media.carfax.com/img/vhr/ico_personal.gif",
			"text": "Personal Use"
		},
		"vin": "JC1NFAEK3H0108772",
		"windowSticker": "https://www.carfax.com/phoenix/sticker/v3/FIAT/s3dJwm1yI21EQFQyCZyog4TS6t3e9XKkGkEyTi3o95Y.cfx",
		"year": 2017
	}]
}
""".data(using: .utf8)!
