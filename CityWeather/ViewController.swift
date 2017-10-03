//
//  ViewController.swift
//  CityWeather
//
//  Created by Leah Xia on 2017-10-02.
//  Copyright © 2017 Leah Xia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var listOfCityModel = [City]()
    
    var selectedCity:City?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let vancouver:City = City(name:"Vancouver", country: "Canada" , weather: 27, image: UIImage(named:"Vancouver.jpg")!)
        
        let losAngeles:City = City(name: "Los Angeles", country: "America", weather: 35, image: UIImage(named:"LosAngeles.jpg")!)
        
        let beijing:City = City(name: "Beijing", country: "China", weather: 30, image: UIImage(named:"Beijing.jpeg")!)
        
        let paris:City = City(name:"Paris", country: "France" , weather: 16, image: UIImage(named:"paris.jpg")!)
        
        let london:City = City(name: "London", country: "UK", weather: 16, image: UIImage(named:"London.jpg")!)
        
        let sydney:City = City(name: "Sydney", country: "Australia", weather: 29, image: UIImage(named:"sydney.jpg")!)
        
        let dubai:City = City(name: "Dubai", country: "UAE", weather: 38, image: UIImage(named:"dubai.jpg")!)
        
        let kohSamui:City = City(name: "Koh Samui", country: "Thailand", weather: 36, image: UIImage(named:"kohSamui.png")!)
        
        let brazzaville:City = City(name: "Brazzaville", country: "Cango", weather: 37, image: UIImage(named:"Brazzaville.jpg")!)
        
        let mexicoCity:City = City(name: "Mexico City", country: "Mexico", weather: 32, image: UIImage(named:"MexicoCity.jpg")!)
        
        
        
        
        
        listOfCityModel.append(vancouver)
        listOfCityModel.append(losAngeles)
        listOfCityModel.append(beijing)
        listOfCityModel.append(paris)
        listOfCityModel.append(london)
        listOfCityModel.append(sydney)
        listOfCityModel.append(dubai)
        listOfCityModel.append(kohSamui)
        listOfCityModel.append(brazzaville)
        listOfCityModel.append(mexicoCity)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfCityModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cityCell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! CityTableViewCell
        
        cityCell.cellLabel.text = listOfCityModel[indexPath.row].cityName
        
        cityCell.cellImage.image = listOfCityModel[indexPath.row].image
        
        return cityCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCity = listOfCityModel[indexPath.row]
        performSegue(withIdentifier: "showCityDetailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCityDetailSegue" {
            let cityDetailVC = segue.destination as? CityDetailViewController
            
            cityDetailVC?.selectedCity = selectedCity
            
        }
    }
    
    
   


}

