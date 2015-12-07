//
//  PeerConnectionManagerDelegate.swift
//  CoachKit
//
//  Created by Keith Coughtrey on 11/07/15.
//  Copyright © 2015 Keith Coughtrey. All rights reserved.
//

import Foundation

/// Here I provide a default implementation for classes the implement ActivityLogger that
/// simply logs each delegate callback. This means I don't duplicate this code for iOS and Mac 
public extension PeerConnectionManagerDelegate where Self : ActivityLogger {
    func didStartBrowsingForPeers() {
        addLogItem("Started browsing for class members")
    }
    
    func didStopBrowsingForPeers() {
        addLogItem("Stoppeded browsing for class members")
    }
    
    func didDisconnectFromSession() {
        addLogItem("This device disconnected")
    }
    
    func didIssueInvitationToJoinClass(inviteeName: String) {
        addLogItem("Invitation issued to new class member \(inviteeName)")
    }
    
    func studentDidStartConnecting(name: String) {
        addLogItem("\(name) started connecting to the class")
    }
    
    func studentDidConnect(name: String) {
        addLogItem("Class member \(name) connected to the class")
    }
    
    func studentDidDisconnect(name: String) {
        addLogItem("Class member \(name) disconnected from the class")
    }
    
    func didReceiveDictionary(dictionary: Dictionary<String, AnyObject>) {
        addLogItem("Received data from class member: \(dictionary) ")
    }
    

}