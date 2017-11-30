//
//  HomeViewController.swift
//  Hungry
//
//  Created by Melody park on 11/28/17.
//  Copyright © 2017 Melody park. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var labels = ["Discover New Recipes", "Pastalicious", "Quick and Easy", "Dinner Dates", "Large Parties"]
    var photos = [UIImage(named: "pancakes"), UIImage(named: "pasta"), UIImage(named:"ratatouille"), UIImage(named:"fish"), UIImage(named:"pizza")]
    var food = [DataStore]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    /*
    func downloadData(){
        
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.header?.text = labels[indexPath.row]
        cell.foodImage?.image = photos[indexPath.row]
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
