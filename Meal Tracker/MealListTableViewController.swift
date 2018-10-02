//
//  ViewController.swift
//  Meal Tracker
//
//  Created by student on 02.10.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {

    var meals: [Meal] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMeals()
    }

    func saveMeals(){
        
    }
    func loadMeals(){
        meals += [
            Meal(
            name:"ЧизБургер",
            photo: UIImage(named:"cheezeburger")!,
            notes:"C cыыыром",
            rating: 3,
            timestamp: Date()
            ),
            Meal(
            name:"ГамБургер",
            photo: UIImage(named: "gamburger")!,
            notes:"Самый дешевый",
            rating: 5,
            timestamp: Date()
            ),
            Meal(
            name:"ТанкоБургер",
            photo: UIImage(named: "tankoburger")!,
            notes:"Для любителей танчиков",
            rating: 5,
            timestamp: Date()
            ),
            Meal(
            name:"БигКинг",
            photo: UIImage(named: "bigking")!,
            notes:"Как бигмак",
            rating: 5,
            timestamp: Date()
            ),
            Meal(
            name:"3х Воппер",
            photo: UIImage(named: "3xvopper")!,
            notes:"3 котлеты",
            rating: 5,
            timestamp: Date()
            )]
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let meal = meals[indexPath.row]
        cell.textLabel?.text = meal.name
        cell.imageView?.image = meal.photo
        return cell
    }
}

