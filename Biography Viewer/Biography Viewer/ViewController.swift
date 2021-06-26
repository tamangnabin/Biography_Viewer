//
//  ViewController.swift
//  Biography Viewer
//
//  Created by srijana bhandari on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var g_player:[Player_class] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        set_player_arraylist();
    }
    
    func set_player_arraylist ()
    {
        let Cristiano = Player_class(p_name: "Cristino Ronaldo",img: UIImage(named: "Cristiano Ronaldo")!, p_team: "Juventus", p_bio: "Plays for Portugal National Team.")
        let Messi = Player_class(p_name: "Lionel Messi", img: UIImage(named: "Lionel Messi")!, p_team: "FC Barcelona", p_bio: "Plays for Argentina National Team.")
        let Neymar = Player_class(p_name: "Neymar", img: UIImage(named: "Neymar")!, p_team: "PSG", p_bio: "Plays for France National Team.")
        let Suarez = Player_class(p_name: "Luis Suaraz", img: UIImage(named: "Luis Suaraz")!, p_team: "FC Barcelona", p_bio: "Plays for Urugway National Team.")
        let Rashford = Player_class(p_name: "Marcus Rashford", img: UIImage(named: "Marcus Rashford")!, p_team: "Manchester United", p_bio: "Plays for England National Team.")
        let Mount = Player_class(p_name: "Mason Mount", img: UIImage(named: "Mason Mount")!, p_team: "Chelsea", p_bio: "Plays for England National Team.")
        let Salah = Player_class(p_name: "Mohamad Salah", img: UIImage(named: "Mohamad Salah")!, p_team: "Liverpool", p_bio: "Plays for Egypt National Team.")
        let Lewandoski = Player_class(p_name: "Robert Lewandowski", img: UIImage(named: "Robert Lewandowski")!, p_team: "Byaren Munchen", p_bio: "Plays for Finland National Team.")
        let Lukaku = Player_class(p_name: "Romelu Lukaku", img: UIImage(named: "Romelu Lukaku")!, p_team: "Inter Milan", p_bio: "Plays for Belgium National Team.")
        let Mbappe = Player_class(p_name: "Kylian Mbappe", img: UIImage(named: "Kylian Mbappe")!, p_team: "PSG", p_bio: "Plays for France National Team.")
        let Bruyne = Player_class(p_name: "Kevin De Bruyne", img: UIImage(named: "Kevin De Bruyne")!, p_team: "Manchester City", p_bio: "Plays for Belgium National Team.")
        let Benzima = Player_class(p_name: "Karim Benzima", img: UIImage(named: "Karim Benzima")!, p_team: "Real Madrid", p_bio: "Plays for France National Team.")
        let Rakitic = Player_class(p_name: "Ivan Rakitic", img: UIImage(named: "Ivan Rakitic")!, p_team: "Sevilla", p_bio: "Plays for Croatia National Team.")
        let Son = Player_class(p_name: "Heung-min Son", img: UIImage(named: "Heung-min Son")!, p_team: "Tottenham", p_bio: "Plays for South Korea National Team.")
        let Kane = Player_class(p_name: "Harry Kane", img: UIImage(named: "Harry Kane")!, p_team: "Tottenham", p_bio: "Plays for England National Team.")
        let Haaland = Player_class(p_name: "Erling Haaland", img: UIImage(named: "Erling Haaland")!, p_team: "Dortmound", p_bio: "Plays for Norway National Team.")
        let Silva = Player_class(p_name: "Bernando Silva", img: UIImage(named: "Lionel Messi")!, p_team: "FC Barcelona", p_bio: "Plays for Argentina National Team.")
        let Muller = Player_class(p_name: "Thomas Muller", img: UIImage(named: "Thomas Muller")!, p_team: "bayren Munchen", p_bio: "Plays for Germany National Team.")
        let Kaka = Player_class(p_name: "Kaka", img: UIImage(named: "Kaka")!, p_team: "Real Madrid", p_bio: "Played for Brazil National Team.")
        let Robben = Player_class(p_name: "Robben", img: UIImage(named: "Robben")!, p_team: "Bayren Munchen", p_bio: "Played for Netherland National Team.")
        let Ronaldinho = Player_class(p_name: "Ronaldinho", img: UIImage(named: "Ronaldinho")!, p_team: "FC Barcelona", p_bio: "Played for Brazil National Team.")
        let Rooney = Player_class(p_name: "Rooney", img: UIImage(named: "Rooney")!, p_team: "Manchester United", p_bio: "Played for England National Team.")
        
        g_player.append(Cristiano)
        g_player.append(Messi)
        g_player.append(Neymar)
        g_player.append(Suarez)
        g_player.append(Rashford)
        g_player.append(Mount)
        g_player.append(Salah)
        g_player.append(Lewandoski)
        g_player.append(Lukaku)
        g_player.append(Mbappe)
        g_player.append(Bruyne)
        g_player.append(Benzima)
        g_player.append(Rakitic)
        g_player.append(Son)
        g_player.append(Kane)
        g_player.append(Haaland)
        g_player.append(Silva)
        g_player.append(Muller)
        g_player.append(Kaka)
        g_player.append(Robben)
        g_player.append(Ronaldinho)
        g_player.append(Rooney)
        
    }
    
    //This array sets the bool value for check mark for array elements size equal to the size of g_players
    var player_fav = Array(repeating: false, count: 22)//here 22 is size of g_players

    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return g_player.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath as IndexPath) as! TableViewCell
        
        cell.playerImage.image = g_player[indexPath.row].image
        cell.playerName.text = self.g_player[indexPath.row].player_name
        cell.playerTeam.text = self.g_player[indexPath.row].player_team
        
        //For creating the check mark
        if player_fav[indexPath.row] {
            cell.accessoryType = .checkmark
        }
        else{
            cell.accessoryType = .none
        }
        return cell;
    }
    

       override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! PlayerViewController
                destinationController.player_bio = g_player[indexPath.row].player_bio!
                destinationController.playerImage = g_player[indexPath.row].player_name!
            }
        
       }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favAction = UIContextualAction(style: .normal,title: "Favourite", handler: {
            (action:UIContextualAction!,view,nil) -> Void in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .checkmark
            self.player_fav[indexPath.row] = true
        })
        
        let unfavAction = UIContextualAction(style: .normal,title: "Unfavourite", handler: {
            (action:UIContextualAction!,view,nil) -> Void in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .none
            self.player_fav[indexPath.row] = false
        })
        favAction.backgroundColor = UIColor(displayP3Red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
        return UISwipeActionsConfiguration(actions: [unfavAction, favAction])
    }
    
    
        
}

