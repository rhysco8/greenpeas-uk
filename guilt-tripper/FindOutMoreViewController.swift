//
//  FindOutMoreViewController.swift
//  guilt-tripper
//
//  Created by Rhys on 12/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import UIKit
import SwiftyJSON

class FindOutMoreViewController: UIViewController {

    @IBOutlet weak var returnToProductSelectButton: UIButton!
    
    @IBOutlet weak var articleTitleLabel: UILabel!
    @IBOutlet weak var articleLinkLabel: UILabel!
    @IBOutlet weak var articleSourceLabel: UILabel!

    var news: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        news = News()
        news.downloadNews {
            DispatchQueue.main.async {
                self.updateUI()
            }
        }
    }
    
    func updateUI(){
        articleTitleLabel.text = news.title 
        articleLinkLabel.text = news.link
        articleSourceLabel.text = news.source
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
