//
//  ChoozeZodiakCollectionViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 3/22/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class ChoozeZodiakCollectionViewController: UIViewController {
    
    // - UI
    @IBOutlet var chooseZodiakCollectionView: UICollectionView!
    @IBOutlet weak var backgroundChooseZodiakImageView: UIImageView!
    
    // - Data
    private var zodiaks = [ZodiakModel]()
    
    // - Manager
    private let contentManager = ContentManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

// MARK: -
// MARK: - CollectionViewDataSource

extension ChoozeZodiakCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return zodiaks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChooseZodiak", for: indexPath) as! ChooseZodiakCollectionViewCell
        let zodiak = zodiaks[indexPath.row]
        //cell.chooseZodiakImageView.image = UIImage(named: zodiak.image)
        //cell.dateChooseZodiakLabel.text = zodiak.date
        //cell.nameChooseZodiakLabel.text = zodiak.zodiakName
        cell.set(zodiak: zodiak)
        return cell
    }
    

}

// MARK: -
// MARK: - CollectionViewDelegate

extension ChoozeZodiakCollectionViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let zodiak = zodiaks[indexPath.row]
        //let subscriptionNavigationViewController = UIStoryboard(name: "Main" , bundle: nil).instantiateInitialViewController() as! UINavigationController
        //let subscriptionViewController = subscriptionNavigationViewController.viewControllers[0] as! subscriptionViewController
        //subscriptionViewController.photo = photo
        //present(subscriptionNavigationViewController, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.size.width - 20) / 3 - 0.1
        let height = width
        let size = CGSize(width: width, height: height)
        return size
    }
}

// MARK: -
// MARK: - Configure

extension ChoozeZodiakCollectionViewController {
    
    func configure() {
        configureZodiaks()
        configureCollectionView()
        hideNavigationBar()
        updateView()
    }
    
    func configureZodiaks() {
        zodiaks = contentManager.zodiaks
    }
    
    
    func configureCollectionView() {
        chooseZodiakCollectionView.dataSource = self
        chooseZodiakCollectionView.delegate = self
    }
    
    func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func updateView() {
        chooseZodiakCollectionView.reloadData()
    }
    
}
