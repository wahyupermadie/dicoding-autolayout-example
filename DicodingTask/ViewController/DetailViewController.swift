//
//  DetailViewController.swift
//  DicodingTask
//
//  Created by Wahyu Permadi on 09/05/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var ivDetail: UIImageView!
    @IBOutlet weak var lblDesc: UILabel!
    
    // Digunakan untuk menampung data sementara
    var detail : (title: String?, desc: String?, image: UIImage?)
    override func viewDidLoad() {
        super.viewDidLoad()

        lblTitle.text = detail.title
        lblDesc.text = detail.desc
        ivDetail.image = detail.image
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
