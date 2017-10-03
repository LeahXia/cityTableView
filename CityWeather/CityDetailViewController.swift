//
//  CityDetailViewController.swift
//  CityWeather
//
//  Created by Leah Xia on 2017-10-03.
//  Copyright © 2017 Leah Xia. All rights reserved.
//

import UIKit


class CityDetailViewController: UIViewController {

    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var weatherLabel: UILabel!
    
    var selectedCity:City?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageOutlet.image = selectedCity?.image
        cityLabel.text = (selectedCity?.cityName)! + ", " + (selectedCity?.countryName)!
       
        
        //Help! force me to change otherwise complains: 'init' has been renamed to 'init(describing:)'
        weatherLabel.text = (String(describing: selectedCity?.weather)) + "°C"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
