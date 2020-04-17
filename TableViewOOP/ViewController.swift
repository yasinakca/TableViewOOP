//
//  ViewController.swift
//  TableViewOOP
//
//  Created by YASIN AKCA on 17.04.2020.
//  Copyright © 2020 YASIN AKCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var selectedName: String?
    var selectedImage: UIImage?
    
    var placesArray = [Places]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let kremlin = Places(name: "Kremlin", image: UIImage(named: "kremlin.jpg")!)
        let stonehenge = Places(name: "Stonehenge", image: UIImage(named: "stonehenge.jpg")!)
        let tajmahal = Places(name: "Taj Mahal", image: UIImage(named: "tajmahal.jpg")!)
        let greatwall = Places(name: "Great Wall", image: UIImage(named: "greatwall.jpg")!)
        let colosseum = Places(name: "Colosseum", image: UIImage(named: "colosseum.jpg")!)
        
        placesArray = [kremlin,stonehenge,tajmahal,greatwall,colosseum]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = placesArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = placesArray[indexPath.row].name
        selectedImage = placesArray[indexPath.row].image
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destination = segue.destination as! SecondViewController
            destination.chosenName = selectedName
            destination.chosenImage = selectedImage
        }
    }
    

}

