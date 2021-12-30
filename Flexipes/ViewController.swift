//
//  ViewController.swift
//  Flexipes
//
//  Created by Bettina Carrizo on 27/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recipeImageView: UIImageView!
    
    var pictures = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictures = [#imageLiteral(resourceName: "pudding_chia_manzana"), #imageLiteral(resourceName: "hamburguesa_porotos"), #imageLiteral(resourceName: "brownie_porotos"), #imageLiteral(resourceName: "panqueque_avena_banana"), #imageLiteral(resourceName: "empanadas_humita"), #imageLiteral(resourceName: "pudding_chia_chocolate"), #imageLiteral(resourceName: "calabacin_capresse")]
        
        recipeImageView.image = #imageLiteral(resourceName: "flexipes")
    }
    @IBAction func shuffleButtonPressed(_ sender: Any) {
        recipeImageView.image = getRandomImage()
        recipeImageView.layer.opacity = 1.0
    }
    
    func getRandomImageIndex(_ size: Int) -> Int {
        Int.random(in: 0..<size)
    }
    
    func getRandomImage() -> UIImage {
        pictures[getRandomImageIndex(pictures.count)]
    }
}
