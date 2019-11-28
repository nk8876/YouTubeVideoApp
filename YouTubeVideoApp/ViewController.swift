//
//  ViewController.swift
//  YouTubeVideoApp
//
//  Created by Dheeraj Arora on 14/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = [Video]()
    var selectedVideo: Video?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.videos = VideoModel().getAllVideo()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    
    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell")!
        
        //Customize the cell to display the video
        let videoTitle = videos[indexPath.row].videoTitle
        let label = cell.viewWithTag(2) as! UILabel
        label.text = videoTitle
        
        //Cunstruct the video thubnail url
        let videoThubnailUrlString = "https://i1.ytimg.com/vi/" + videos[indexPath.row].videoId + "/maxresdefault.jpg"
        
        //Create an URL Objecź
        let videoThubnailUrl = URL(string: videoThubnailUrlString)
        if videoThubnailUrl != nil{
            //Create an URLRequest Object
            let request = URLRequest(url: videoThubnailUrl!)
            
            //Create an UrlSession Object
            let session = URLSession.shared
            
            //Create an datatask and pass in the request
            let dataTask = session.dataTask(with: request) { ( data, responce, error) in
                
                DispatchQueue.main.async {
                    //Get reference to the image view element og the cell
                    let imageView = cell.viewWithTag(1) as! UIImageView
                    
                    //Create image object from the data and assign it into the image view
                    imageView.image = UIImage(data: data!)
                }
            }
            dataTask.resume()
        
    }
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //Get the width of the screen to calculate hight of row
        return (self.view.frame.size.width/320) * 180
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedVideo = videos[indexPath.row]
        let next = self.storyboard!.instantiateViewController(withIdentifier: "VideoDetailViewController") as! VideoDetailViewController
        next.selectedVideo = self.selectedVideo
        self.navigationController?.pushViewController(next, animated: true)
    }
}
