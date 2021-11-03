//
//  ViewController.swift
//  RestAPIPractices
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
    var petitions = [Petition]()
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        petitions = WebServices().GetData(urlString: urlString)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellTableViewCell
        let petition = petitions[indexPath.row]
        cell.configure(petition: petition)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
}

