//
//  CafeTableViewController.swift
//  Cafe
//
//  Created by 施馨檸 on 2017/8/30.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit

class CafeTableViewController: UITableViewController {

    let cafeArray = [cafeDetail.init(intro: "咖啡館開張於1894年，因位於當時的紐約保險公司大樓內而得名。據說在一次大戰時期此處即為布達佩斯的文藝中心，許多出版社雜誌社在此設立辦公室，雖然內部裝潢華麗輝煌卻絲毫不以勢壓人，非常樂於提供窮作家們在此寫作及聚會。", location: "布達佩斯", ranking: "第一名", outsideImage: "CaféNewYorkOutside", insideImage: "CaféNewYorkInside"),
                     cafeDetail.init(intro: "這座咖啡館開業於1860年，在19世紀後期成為維也納知識階層重要的聚會地點，常客中有西奧多·赫茨爾、弗拉基米爾·伊里奇·列寧、阿道夫·路斯、和列夫·托洛茨基。在1938年之前這座咖啡館由於有許多下象棋者，被稱為「象棋學校」（Die Schachhochschule。", location: "維也納", ranking: "第三名", outsideImage: "CaféCentralOutside", insideImage: "CaféCentralInside"),
                     cafeDetail.init(intro: "Café Imperial是帝國飯店附屬的咖啡館。內部裝潢挑高氣派、華麗精緻，與樸實的外觀有著極大的反差，至今已有超過百年的歷史。咖啡館本身已成為一處風景，平價消費更是讓遊客趨之若鶩。", location: "布拉格", ranking: "第四名", outsideImage: "CaféImperialOutside", insideImage: "CaféImperialInside"),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! CafeViewController
        
        let number = tableView.indexPathForSelectedRow!.row
        controller.cafe = cafeArray[number]
        
        
        
    }
    

}
