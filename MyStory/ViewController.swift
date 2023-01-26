//
//  ViewController.swift
//  MyStory
//
//  Created by Auden Huang on 1/24/23.
//

import UIKit

class ViewController: UIViewController {
    let myAlterEgo = ContextItem(title: "My Alter Ego", image: UIImage(named: "TonyStark")!, context: "Tony Stark: the wealthy son of industrialist and weapons manufacturer Howard Stark and his wife, Maria. Tony grew up a genius with a brilliant mind for technology and inventions and, naturally, followed in his father’s footsteps, inheriting Stark Industries upon his parents’ untimely death. Tony designed many weapons of war for Stark Industries, far beyond what any other company was creating, while living the lifestyle of a bon vivant.")
    let myBackgroundStory = ContextItem(title: "My Background Story", image: UIImage(named: "background")!, context: "Tony Stark was captured by a communist leader and imprisoned, forced to make new weapons for the overlord. Also imprisoned with him was Professor Ho Yinsen, a renowned physicist. Together they built the first suit of armor that would become Iron Man. Professor Ho even made the chest plate of the armor with a device to help Tony’s heart keep beating.Tony used the armor to escape, although in the process, Professor Ho sacrificed his life to give Tony the time to charge it to full capacity. Tony escaped with James Rhodes (now War Machine) and returned to America to become a part of the Avengers, taking his fathers teachings of giving back to the world to heart and using his new armor to aid mankind. He wasn’t without his own demons though, as he struggled with alcoholism throughout his life.")
    let myPower = ContextItem(title: "My Power", image: UIImage(named: "power")!, context: "Iron Man possesses powered armor that gives him superhuman strength and durability, flight, and an array of weapons. The armor is invented and worn by Stark.The weapons systems of the suit have changed over the years, but Iron Man's standard offensive weapons have always been the repulsor rays that are fired from the palms of his gauntlets.")
    var contexts: [ContextItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        contexts = [myAlterEgo, myBackgroundStory, myPower]
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapContextItem(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.contextItem = contexts[0]
            } else if tappedView.tag == 1 {
                detailViewController.contextItem = contexts[1]
            } else if tappedView.tag == 2 {
                detailViewController.contextItem = contexts[2]
            } else {
                print("no context was tapped, please check your selection.")
            }
        }
    }
    
    
}

