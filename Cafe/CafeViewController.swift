//
//  CafeViewController.swift
//  Cafe
//
//  Created by 施馨檸 on 2017/8/30.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit

class CafeViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var outsideImageView: UIImageView!
    @IBOutlet weak var insideImageView: UIImageView!
    @IBOutlet weak var introTaxtView: UITextView!
    
    var cafe: cafeDetail!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        locationLabel.text = cafe.location
        rankingLabel.text = cafe.ranking
        outsideImageView.image = UIImage(named: cafe.outsideImage)
        insideImageView.image = UIImage(named: cafe.insideImage)
        introTaxtView.text = cafe.intro
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
