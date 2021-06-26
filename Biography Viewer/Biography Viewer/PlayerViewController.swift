//
//  PlayerViewController.swift
//  Biography Viewer
//
//  Created by srijana bhandari on 6/26/21.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var PlayerImageView: UIImageView!
    @IBOutlet weak var Player_Bio: UILabel!
    var playerImage = ""
    var player_bio = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        PlayerImageView.image = UIImage(named: playerImage)
        Player_Bio.text = player_bio
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
