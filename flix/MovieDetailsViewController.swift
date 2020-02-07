//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Eamon J Moradi-bidhendi on 2/6/20.
//  Copyright © 2020 Eamon J Moradi-bidhendi. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropaView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    


    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Sets up the titleLabel
        titleLabel.text = movie["title"] as? String
        // Makes the title fit to the size of the label
        titleLabel.sizeToFit()
        //Sets up synopsisLabel
        synopsisLabel.text = movie["overview"] as? String
        // Makes the synopsisLabel fit to the size of the label
        synopsisLabel.sizeToFit()
         
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        posterView.af_setImage(withURL: posterURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropaView.af_setImage(withURL: backdropURL!)
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
