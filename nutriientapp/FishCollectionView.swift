//
//  FishCollectionView.swift
//  nutriientapp
//
//  Created by Fauzi Fauzi on 29/04/19.
//  Copyright © 2019 Kelompok8. All rights reserved.
//

import UIKit

class FishCollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var imgArr = ["Dinner Fish","Grilled Fish","Ketchup Tuna","Burrito Chicken","Chicken Cuisine","BBQ Chicken","Beef Salad","Beef Cuisine","Asparagus Beef"]
    
    var selectedCollectionViewIndexpath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailViewController" {
//            let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
            let vc = segue.destination as! DetailViewController
            
            vc.indexPathFromCollection = selectedCollectionViewIndexpath
            print("indexxxx \(selectedCollectionViewIndexpath)")
            vc.name = imgArr[(selectedCollectionViewIndexpath?.row)!]
            print("indexxxx \(imgArr[(selectedCollectionViewIndexpath?.row)!])")
        }

    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeProductViewCell", for: indexPath) as? RecipeProductViewCell
        cell?.img.image = UIImage(named: imgArr[indexPath.row])
        cell?.titleLabel.text = imgArr[indexPath.row]
        return cell!
    }

        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//            let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
//
//
////            vc?.name = imgArr[indexPath.row]
//            self.navigationController?.pushViewController(vc!, animated: true)
            selectedCollectionViewIndexpath = indexPath
//            vc?.name = imgArr[indexPath.row]
            performSegue(withIdentifier: "DetailViewController", sender: self)
        }

}


//extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return imgArr.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
//        cell?.img.image = UIImage(named: imgArr[indexPath.row])
//        cell?.titleLabel.text = imgArr[indexPath.row]
//
//        return cell!
//    }

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
//
//        vc?.name = imgArr[indexPath.row]
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
//
//}

