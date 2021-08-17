//
//  MainViewController.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

import UIKit

class MainViewController: UICollectionViewController {
    
    private var userAction: UserActions!
    private let userActions = UserActions.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objectListVC = segue.destination as! ObjectListController
        
        switch userAction {
        case .films:
            objectListVC.itemsType = .allFilms
        case .people:
            objectListVC.itemsType = .allCharacters
        case .planets:
            objectListVC.itemsType = .allPlanets
        case .species:
            objectListVC.itemsType = .allSpecies
        case .starships:
            objectListVC.itemsType = .allStarships
        case .vehicles:
            objectListVC.itemsType = .allVehicles
        default: break
        }
    }
    // MARK: - UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return userActions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! UserActionCell
    
        cell.userActionImageView.image = UIImage(named: userActions[indexPath.item].rawValue)
        cell.userActionLabel.text = userActions[indexPath.item].rawValue
        
        return cell
    }

    // MARK: - UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        userAction = userActions[indexPath.item]
        performSegue(withIdentifier: "ShowItems", sender: nil)
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 48, height: 165)
    }
}
