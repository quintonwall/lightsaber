//
//  Lightsaber.swift
//  Pods
//
//  Created by QUINTON WALL on 10/14/15.
//
//

import Foundation
import OAuthSwift
import Alamofire


public class Lightsaber {
    
    public static let sharedInstance = Lightsaber()
     var alamofireMgr : Alamofire.Manager?
    
    init() {
        
    }
    
    public func login(consumerKey : String, consumerSecret : String, success: (manager : Alamofire.Manager) -> Void, failure: (result : String) -> Void) {
        
        
        let oauthswift = OAuth2Swift(
            consumerKey:    consumerKey,
            consumerSecret: consumerSecret,
            authorizeUrl:   "https://login.salesforce.com/services/oauth2/authorize",
            accessTokenUrl: "https://login.salesforce.com/services/oauth2/token",
            responseType:   "code"
        )
        let state: String = generateStateWithLength(20) as String
        oauthswift.authorizeWithCallbackURL( NSURL(string: "oauth-swift://oauth-callback/salesforce")!, scope: "full", state: state, success: {
            credential, response, parameters in
          
            var defaultHeaders = Alamofire.Manager.sharedInstance.session.configuration.HTTPAdditionalHeaders ?? [:]
            defaultHeaders["Authorization"] = "Bearer "+credential.oauth_token
            defaultHeaders["x-li-format"] =  "json"
            defaultHeaders["Content-Type"] = "application/json"
            
            
            let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
            configuration.HTTPAdditionalHeaders = defaultHeaders
            
            self.alamofireMgr = Alamofire.Manager(configuration: configuration)
            success(manager: self.alamofireMgr!)

           
            }, failure: {(error:NSError!) -> Void in
                failure(result: error.localizedDescription)
        })
        
    }
    
}
