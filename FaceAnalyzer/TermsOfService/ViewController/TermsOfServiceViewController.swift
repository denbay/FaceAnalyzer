//
//  TermsOfServiceViewController.swift
//  FaceAnalyzer
//
//  Created by VIKTORIA BURNOS on 4/5/20.
//  Copyright © 2020 VB. All rights reserved.
//

import UIKit

class TermsOfServiceViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var termsLabel: UILabel!
    @IBOutlet weak var textScrollView: UIScrollView!
    @IBOutlet weak var areaOfTextView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

// MARK: -
// MARK: - Configure

private extension TermsOfServiceViewController {
    
    func configure() {
        configureNavigationBar()
        configureTermsLabel()
    }
    
    func configureNavigationBar() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        // back bar
        navigationController?.navigationBar.backItem?.title = ""
        navigationController?.navigationBar.tintColor = UIColor.systemOrange
        // navigation bar title
        title = "Terms of Service"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        // navigation bar color
        navigationController?.navigationBar.barTintColor = UIColor(red: 46 / 255, green: 0 / 255, blue: 56 / 255, alpha: 1)
    }
    
    func configureTermsLabel() {
        termsLabel.text = "\nLast update: January 28, 2020\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ut tincidunt turpis. Nunc efficitur massa ante, quis euismod purus mattis eu. Proin efficitur elit erat. Quisque hendrerit tempor turpis, sit amet rhoncus orci mollis sed. Nam faucibus scelerisque risus a cursus.\n Fusce rutrum interdum erat, non iaculis velit fringilla at. Phasellus sed velit mattis, varius arcu mattis, rutrum libero. Nunc semper libero turpis, sed placerat tortor blandit dignissim.Integer augue urna, faucibus id congue ut, viverra eget leo. In vitae placerat tellus.\n Curabitur gravida ultricies nunc eu sodales. Proin vitae dui non risus convallis rhoncus. Sed finibus augue sit amet metus interdum dignissim. Sed pulvinar nulla in risus sagittis molestie. Nullam porta mauris sit amet nulla eleifend elementum. Pellentesque pretium imperdiet urna feugiat sagittis. Mauris vitae odio tincidunt, luctus lectus vel, auctor neque.Nunc semper libero turpis, sed placerat tortor blandit dignissim.Integer augue urna, faucibus id congue ut, viverra eget leo. In vitae placerat tellus. Curabitur gravida ultricies nunc eu sodales. Proin vitae dui non risus convallis rhoncus. Sed finibus augue sit amet metus interdum dignissim. Sed pulvinar nulla in risus sagittis molestie. Nullam porta mauris sit amet nulla eleifend elementum. Pellentesque pretium imperdiet urna feugiat sagittis. Mauris vitae odio tincidunt, luctus lectus vel, auctor neque."
    }
    
}
