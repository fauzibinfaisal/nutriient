//
//  DetailViewController.swift
//  nutriientapp
//
//  Created by Fauzi Fauzi on 29/04/19.
//  Copyright © 2019 Kelompok8. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    var indexPathFromCollection: IndexPath?
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
        detailTitle.text = name
        detailImage.image = UIImage(named: name)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
