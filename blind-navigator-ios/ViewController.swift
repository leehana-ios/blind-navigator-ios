//
//  ViewController.swift
//  blind-navigator-ios
//
//  Created by LeeHana on 2015. 11. 26..
//  Copyright © 2015년 LeeHana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//         Do any additional setup after loading the view, typically from a nib.

		let nmap = NMapView.init(frame: self.view.frame)
		let apiKey = "c046b7b09869549d4f8201840ebce0b1"
		nmap.setApiKey(apiKey)
		
//		[_mapView setMapCenter:NGeoPointMake(126.978371, 37.5666091) atLevel:11];

		nmap.setPanEnabled(true)
		nmap.setMapCenter(NGeoPoint(longitude: 126.978371, latitude: 37.5666091), atLevel: 15)
//		nmap.setMapCenter(NGeoPoint(longitude: 126.978371, latitude: 37.5666091), atLevel: 11)

		self.view.addSubview(nmap)
		
    }
	
//	- (void) onMapView:(NMapView *)mapView initHandler:(NMapError *)error;
	
	

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

