//
//  TransactionsVC.swift
//  FinalProjectBM
//
//  Created by SONOMA on 05/08/2024.
//

import UIKit

class TransactionsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var transactionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //backGround color
        setGradientBackground()
        
        //Table view
        transactionsTableView.delegate = self
        transactionsTableView.dataSource = self
        transactionsTableView.register(UINib(nibName: "FirstScreenTableViewCell", bundle: nil), forCellReuseIdentifier: "firstcell")
        
        //Tab Bar
        let tabBarHeight: CGFloat = 73// Set height as specified
        let itemWidth: CGFloat = 304 / 5 // Total width divided by the number of items
                
        let safeAreaInsets = view.safeAreaInsets
        let customTabBar = CustomTabBar(frame: CGRect(x: 0, y: view.frame.height - tabBarHeight - safeAreaInsets.bottom - 0, width: view.frame.width, height: tabBarHeight))
        customTabBar.layer.cornerRadius = 25 // Adjust corner radius as needed
        customTabBar.clipsToBounds = true
                
        view.addSubview(customTabBar)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 3
     }
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "firstcell", for: indexPath) as! FirstScreenTableViewCell
         return cell
     }
    
    func setGradientBackground() {
            let gradientLayer = CAGradientLayer()
            gradientLayer.frame = self.view.bounds

            // Set the gradient colors
            gradientLayer.colors = [
                UIColor(red: 255/255, green: 248/255, blue: 231/255, alpha: 1).cgColor, // Light pink color
                UIColor(red: 255/255, green: 234/255, blue: 238/255, alpha: 1).cgColor  // Slightly darker pink color
            ]

            // Set the gradient locations
            gradientLayer.locations = [0.0, 1.0]

            // Add the gradient layer to the view's layer
            self.view.layer.insertSublayer(gradientLayer, at: 0)
        }

}
