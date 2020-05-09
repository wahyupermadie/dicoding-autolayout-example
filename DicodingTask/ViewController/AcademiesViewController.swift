//
//  AcademiesViewController.swift
//  DicodingTask
//
//  Created by Wahyu Permadi on 09/05/20.
//  Copyright © 2020 Wahyu Permadi. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var academiesAndroid: UIImageView!
    @IBOutlet weak var academiesArVr: UIImageView!
    @IBOutlet weak var academiesUnity: UIImageView!
    @IBOutlet weak var academiesCloud: UIImageView!
    
    // Digunakan untuk menampung data item
    var academies = [ ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
                      ("Unity Game Developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
                      ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr")),
                      ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
                      ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "android"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Menambahkan aksi tapped pada stack view
        addTapped(parameter: &academiesAndroid)
        addTapped(parameter: &academiesUnity)
        addTapped(parameter: &academiesArVr)
        addTapped(parameter: &academiesCloud)
    }
    
    func addTapped( parameter : inout UIImageView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        // Digunakan menginisialisasi DetailViewController
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        // Kode di bawah digunakan untuk menentukan stack view mana yang dipilih
        switch gesture.view as? UIImageView {
            case(academiesAndroid) :
                controller.detail = academies[0]
            case(academiesUnity) :
                controller.detail = academies[1]
            case(academiesArVr) :
                controller.detail = academies[2]
            case(academiesCloud) :
                controller.detail = academies[3]
            default:
                controller.detail = academies[4]
        }
        
        // Kode dibawah digunakan untuk berpindah ke halaman detail dengan membawa informasi yang sesuai
        self.navigationController?.pushViewController(controller, animated: true)
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
