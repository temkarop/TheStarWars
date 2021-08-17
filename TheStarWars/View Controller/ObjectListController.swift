//
//  ObjectListController.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

import UIKit
import Alamofire

class ObjectListController: UITableViewController {
    
    var itemsType: ItemsType!
    
    var filmNext: Films!
    var nextCaracters: Characters!
    
    var films: [FilmDetails] = []
    var characters: [CharacterDetails] = []
    var planets: [PlanetDetails] = []
    var species: [SpeciesDetails] = []
    var vehicles: [VehicleDetails] = []
    var starships: [StarshipDetails] = []
    var items: [Displayable] = []
    var selectedItem: Displayable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBackgroundTableView()
        fetchData(from: itemsType.request)
    }
    // MARK: - Table view data source
    
    private func updateBackgroundTableView() {
        let image = UIImage(named: "background")
        let imageView = UIImageView(image: image)
        tableView.backgroundView = imageView
        tableView.rowHeight = 130
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ObjectListCell
        let item = items[indexPath.row]
        
        cell.configure(with: item)
       
        return cell
    }
    // MARK: - UICollectionViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = items[indexPath.row]
        performSegue(withIdentifier: "GoToDetailVC", sender: nil)
        return
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailViewController else {
          return
        }
        destinationVC.data = selectedItem
    }
}
// MARK: - Alamofire
extension ObjectListController {
    func fetchData(from url: URLRequest) {
            AF.request(url).validate().responseDecodable(of: Films.self) { (response) in
                guard let films = response.value else { return }
                self.films = films.all
                self.items = films.all
            
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            AF.request(url).validate().responseDecodable(of: Characters.self) { (response) in
                guard let characters = response.value else { return }
                self.characters = characters.all
                self.items = characters.all
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            AF.request(url).validate().responseDecodable(of: Planets.self) { (response) in
                guard let planets = response.value else { return }
                self.planets = planets.all
                self.items = planets.all

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            AF.request(url).validate().responseDecodable(of: Species.self) { (response) in
                guard let species = response.value else { return }
                self.species = species.all
                self.items = species.all
            
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            AF.request(url).validate().responseDecodable(of: Vehicles.self) { (response) in
                guard let vehicles = response.value else { return }
                self.vehicles = vehicles.all
                self.items = vehicles.all

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            AF.request(url).validate().responseDecodable(of: Starships.self) { (response) in
                guard let starships = response.value else { return }
                self.starships = starships.all
                self.items = starships.all

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
    }
}
