//
//  BookViewController.swift
//  BlinkListApp
//
//  Created by David U. Okonkwo on 8/31/20.
//  Copyright © 2020 Decagon HQ. All rights reserved.
//

import UIKit

class BookViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    let data = DataLoader().bookData
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data?.access.count ?? 0
    }
    
    func timeInHours(_ time: String) -> String {
        let hourToInt = Int(time)
        if let finalT = hourToInt {
            let final = finalT / 60
            return String(final)
        }
        return ""
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bookCell", for: indexPath) as? BookCell {
            if let indexBook = data?.books[indexPath.row]{
                cell.bookTitle.text = indexBook.title
                cell.bookAuthor.text = indexBook.author
                cell.bookLength.text = timeInHours(indexBook.length) + "h"
                cell.bookPrice.text = indexBook.price
                cell.bookType.text = indexBook.book_type
                cell.imageView.image = UIImage(named: (indexBook.image))
            }
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.books.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
       
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = self.data?.books[indexPath.row]{
            performSegue(withIdentifier: "showSecondScreen", sender: cell)
        }
                 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let book = sender as? Books {
          if let viewControllerDestination = segue.destination as? SecondScreenViewController{
            viewControllerDestination.book = book
            }
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let cellHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: BookHeader.reuseIdentifier, for: indexPath) as? BookHeader else {
            fatalError("Header does not exist")
        }
        let header = data?.title
        let subHeader = data?.description
        cellHeader.sectionHeader.text = header
        cellHeader.sectionSubHeader.text = subHeader
        return cellHeader
    }
    
}




