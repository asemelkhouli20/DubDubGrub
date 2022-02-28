//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Asem on 28/02/2022.
//

import CloudKit

struct DDGLocation {
    
    static let kDescription     = "description"
    static let kName            = "name"
    static let kSquareAssent    = "squareAssent"
    static let kBunnerAssent    = "bunnerAssent"
    static let kAddress         = "address"
    static let kWebsiteURL      = "websiteURL"
    static let kPhoneNumber     = "phoneNumber"
    
    let ckRecoredID:CKRecord.ID
    let name:String
    let description:String
    let squareAssent:CKAsset!
    let bunnerAssent:CKAsset!
    let address:CLLocation
    let websiteURL:String
    let phoneNumber:String
    
    init(record:CKRecord){
        
        ckRecoredID     = record.recordID
        
        name            = record[DDGLocation.kName]         as? String ?? "N/A"
        description     = record[DDGLocation.kDescription]  as? String ?? "N/A"
        websiteURL      = record[DDGLocation.kWebsiteURL]   as? String ?? "N/A"
        phoneNumber     = record[DDGLocation.kPhoneNumber]  as? String ?? "N/A"
        
        squareAssent    = record[DDGLocation.kSquareAssent] as? CKAsset
        bunnerAssent    = record[DDGLocation.kBunnerAssent] as? CKAsset
        
        address         = record[DDGLocation.kAddress]      as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        
    }
}
