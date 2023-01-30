//
//  ViewController.swift
//  spotifyClone
//
//  Created by Burak Kara on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var sliderLoading: UISlider!
  
  @IBOutlet weak var albumsCollectionView: UICollectionView!
  @IBOutlet weak var albumsCollectionView2: UICollectionView!
  
  var albumList = [Albums]()
  var albumList2 = [Albums]()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    sliderLoading.thumbTintColor = .clear  
   
   let a1 = Albums(id: 0, detail: "The biggest songs of the 2010s.", picture:"2010s")
   let a2 = Albums(id: 1, detail: "Rock legends albums.", picture:"rock")
   let a3 = Albums(id: 2, detail: "DaBaby and Rae Sremmurd.", picture:"rap")
   let a4 = Albums(id: 3, detail: "Today's top Latin hits.", picture:"latino")
   let a5 = Albums(id: 4, detail: "Best new and recent chill hits.", picture:"chill")
   let a6 = Albums(id: 5, detail: "The biggest songs of the 1980s.", picture:"80s")

    albumList.append(a1)
    albumList.append(a2)
    albumList.append(a3)
    albumList.append(a4)
    albumList.append(a5)
    albumList.append(a6)
    
    albumsCollectionView.delegate = self
    albumsCollectionView.dataSource = self
    
    let appearance = UICollectionViewFlowLayout()
    appearance.scrollDirection = .horizontal
    let screenWidht = UIScreen.main.bounds.width
    let itemWidht = (screenWidht-60)/2
    
    appearance.itemSize = CGSize(width: itemWidht, height: itemWidht*1.5)
    albumsCollectionView.collectionViewLayout = appearance
    
    
    let al1 = Albums(id: 0, detail: "The instrumental playlist.", picture:"jazz")
    let al6 = Albums(id: 1, detail: "İnstrumental hip hop beats.", picture:"focus")
    let al3 = Albums(id: 2, detail: "Focus ambient music.", picture:"deep")
    let al4 = Albums(id: 3, detail: "Beautiful piano pieces.", picture:"piano")
    let al5 = Albums(id: 4, detail: "Music in the background.", picture:"study")
    let al2 = Albums(id: 5, detail: "For the programmers.", picture:"coding")


     albumList2.append(al1)
     albumList2.append(al2)
     albumList2.append(al3)
     albumList2.append(al4)
     albumList2.append(al5)
     albumList2.append(al6)
    
    albumsCollectionView2.delegate = self
    albumsCollectionView2.dataSource = self
    
    albumsCollectionView2.collectionViewLayout = appearance
    scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 800, right: 0)
  }
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return albumList.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if collectionView == self.albumsCollectionView {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumsCell", for: indexPath) as! AlbumsCollectionViewCell
      let album = albumList[indexPath.row]
      cell.imageView.image = UIImage(named:album.picture!)
      cell.labelDetail.text = album.detail!
      return cell
    }
    else {
      let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "albumsCell2", for: indexPath) as! AlbumsCollectionViewCell
      
      let album2 = albumList2[indexPath.row]
      cell2.imageView.image = UIImage(named:album2.picture!)
      cell2.labelDetail.text = album2.detail!
      return cell2
    
    }
    
  }
}
  
