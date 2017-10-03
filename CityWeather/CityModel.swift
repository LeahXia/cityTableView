//
//  CityModel.swift
//  CityWeather
//
//  Created by Leah Xia on 2017-10-02.
//  Copyright © 2017 Leah Xia. All rights reserved.
//

import Foundation
import UIKit

class City{
    let cityName:String
    let countryName:String
    let weather:Int
    let image:UIImage

    init(name:String, country:String, weather:Int, image:UIImage){
        self.cityName = name
        self.countryName = country
        self.weather = weather
        self.image = image
        
    }
}


