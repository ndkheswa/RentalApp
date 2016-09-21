//
//  ImageLoader.swift
//  mymobileapp
//
//  Created by Ndoda Kheswa on 2016/09/20.
//  Copyright © 2016 Simple-software Technologies. All rights reserved.
//
import UIKit

class ImageLoader {
    static func loadImageFromUrl(url: String, view: UIImageView){
        
        // Create Url from string
        let url = NSURL(string: url)!
        
        // Download task:
        // - sharedSession = global NSURLCache, NSHTTPCookieStorage and NSURLCredentialStorage objects.
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (responseData, responseUrl, error) -> Void in
            // if responseData is not null...
            if let data = responseData{
                
                // execute in UI thread
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    view.image = UIImage(data: data)
                })
            }
        }
        // Run task
        task.resume()
    }
}
