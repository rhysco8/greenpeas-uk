//
//  FindOutMoreViewController.swift
//  guilt-tripper
//
//  Created by Rhys on 12/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import UIKit
import SwiftyJSON
import SafariServices

class FindOutMoreViewController: UIViewController {

    @IBOutlet weak var returnToProductSelectButton: UIButton!
    @IBOutlet weak var articleTitleLabel1: UILabel!
    @IBOutlet weak var articleLinkButton1: UIButton!
    @IBOutlet weak var articleSourceLabel1: UILabel!
    @IBOutlet weak var articleTitleLabel2: UILabel!
    @IBOutlet weak var articleLinkLabel2: UILabel!
    @IBOutlet weak var articleSourceLabel2: UILabel!
    
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
        articleTitleLabel1.text = news.title1
  
        articleSourceLabel1.text = news.source1
        articleTitleLabel2.text = news.title2
        articleLinkLabel2.text = news.link2
        articleSourceLabel2.text = news.source2
    }
    
    @IBAction func openArticleLink1(_ sender: Any) {
        guard let url = URL(string: news.link1) else { return }
        let site = SFSafariViewController(url: url)
        present(site, animated: true)
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
