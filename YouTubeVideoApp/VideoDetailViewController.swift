//
//  VideoDetailViewController.swift
//  YouTubeVideoApp
//
//  Created by Dheeraj Arora on 14/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController {
    

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    var selectedVideo: Video?
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewDidAppear(_ animated: Bool) {
        if let vId = self.selectedVideo{
            self.lblTitle.text = vId.videoTitle
            self.lblDescription.text = vId.videoDescription
            
            let width = CGFloat(self.view.frame.size.width)
            let height = CGFloat(width/320 * 180)
    
//            let videoEmbedString = "<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"" + height + "\" width=\"" + width) + "\" src=\"http://www.youtube.com/embed/" + vId.videoId + "?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>"
//            self.webView.loadHTMLString(videoEmbedString, baseURL: nil)
        }
    }

    

}
