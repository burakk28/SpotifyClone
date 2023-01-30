//
//  Albums.swift
//  spotifyClone
//
//  Created by Burak Kara on 29.01.2023.
//

import Foundation

class Albums {
  
  var id:Int?
  var detail:String?
  var picture:String?


  init(id: Int, detail: String, picture: String) {
    self.id = id
    self.detail = detail
    self.picture = picture
  }
}
