//
//  DetailViewController.swift
//  MyStory
//
//  Created by Auden Huang on 1/24/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var contexts: UILabel!

    @IBOutlet weak var navigation: UINavigationItem!
    var contextItem: ContextItem?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contextItem = contextItem{
            navigation.title = contextItem.title
            image.image = contextItem.image
            contexts.text = contextItem.context
            contexts.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
