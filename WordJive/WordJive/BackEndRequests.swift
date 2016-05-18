//
//  BackEndRequests.swift
//  WordJive
//
//  Created by Nick Perkins on 5/17/16.
//  Copyright © 2016 Donny Davis. All rights reserved.
//

import Foundation

enum BackEndURLs : String {
    case Capabilities = "https://floating-taiga-20677.herokuapp.com/capabilities"
    case Puzzle = "https://floating-taiga-20677.herokuapp.com/puzzle"
}

class BackEndRequests : AnyObject {
    
    var receivedData : NSMutableData?
    class func getCapabilities() {
        
    }
    
    class func getPuzzle() {
        
    }
    
    private class func startSession(urlString: BackEndURLs) {
        
        let url = NSURL(string: urlString.rawValue)
        let urlSessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
        let urlSession = NSURLSession(configuration: urlSessionConfig)
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(urlRequest) {
        (data, response, error) -> Void in
        
        let httpResponse = response as! NSHTTPURLResponse
        let statusCode = httpResponse.statusCode
        
        if (statusCode == 200) {
            self.gotData(data!)
        }
    }
    
    task.resume()
    
    }
    

    
}

