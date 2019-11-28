//
//  VideoModel.swift
//  YouTubeVideoApp
//
//  Created by Dheeraj Arora on 14/10/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class VideoModel: NSObject {

    func getAllVideo() -> [Video] {
        
        //Create an empty array of video objects
        var video = [Video]()
        
        //Create a video object
        let video1 = Video()
        
        //Assign properties
        video1.videoId = "JDbEgOsWGG4"
        video1.videoTitle = "How To Make a YouTube Video App - Ep 01 - Tools And Materials    "
        video1.videoDescription = "This lesson shows you how to create the video data objects that we're going to be using in the data to display the thumbnails in the tableview as well as the individual video detail views."
        
        //Append it into the video object
         video.append(video1)
        
        
        //Create a video object
        let video2 = Video()
        
        //Assign properties
        video2.videoId = "DO_3ECSL0rc"
        video2.videoTitle = "How To Make a YouTube Video App - Ep 02 - Adding the UITableView "
        video2.videoDescription = "This lesson shows you how to add a tableview to your view controller. The tableview is just a scrollable list that you see in many apps. We're going to add the UITableView element to our view and then hook it up to an IBOutlet in the ViewController class."
        
        //Append it into the video object
        video.append(video2)
        
        
        //Create a video object
        let video3 = Video()
        
        //Assign properties
        video3.videoId = "48kekFLZkXU&t=313s"
        video3.videoTitle = "How To Make a YouTube Video App - Ep 03 - Creating the Video Data"
        video3.videoDescription = "This lesson shows you how to create the video data objects that we're going to be using in the data to display the thumbnails in the tableview as well as the individual video detail views."
        
        //Append it into the video object
        video.append(video3)
        
        
        //Create a video object
        let video4 = Video()
        
        //Assign properties
        video4.videoId = "AZxK_6OQV7c&t=20s"
        video4.videoTitle = "How To Make a YouTube Video App - Ep 04 - Displaying Video Titles"
        video4.videoDescription = "This lesson shows you how to display the video titles in the tableview which is just the scrollable list on the main view. I'll show you how the tableview gets the video data that we created in the previous lesson."
        
        //Append it into the video object
        video.append(video4)
        
        
        //Create a video object
        let video5 = Video()
        
        //Assign properties
        video5.videoId = "mlzu_DXtG80&t=13s"
        video5.videoTitle = "How To Make a YouTube Video App - Ep 05 - Video Thumbnails"
        video5.videoDescription = "In this series, I'll show you guys how to build a video app that plays YouTube videos! In this lesson, we download the video thumbnails and display them in the scrollable tableview!"

        
        //Append it into the video object
        video.append(video5)
        
        //Return the array of the caller
        return video
    }
}
