//
//  Player.swift
//  Biography Viewer
//
//  Created by srijana bhandari on 6/25/21.
//

import Foundation

import UIKit

class Player_class{
    
    var player_name:String?
    var player_team:String?
    var player_bio:String?
    var image:UIImage?
    
    
    init(p_name:String,img:UIImage, p_team:String,  p_bio:String ){
        self.player_name = p_name
        self.player_team = p_team
        self.image = img
        self.player_bio = p_bio
    }
}
