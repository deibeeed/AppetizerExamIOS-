//
//  ITunes.swift
//  AppetizerExamIOS
//
//  Created by David Andrew Francis Duldulao on 04/03/2019.
//  Copyright © 2019 AppetizerIOSCodingExam. All rights reserved.
//

import Foundation
import ObjectMapper

class ITunes: Mappable {
    var wrapperType: String?
    var kind: String?
    var collectionId: Int64?
    var trackId: Int64?
    var artistName: String?
    var collectionName: String?
    var trackName: String?
    var collectionCensoredName: String?
    var trackCensoredName: String?
    var collectionArtistId: Int64?
    var collectionArtistViewUrl: String?
    var collectionViewUrl: String?
    var trackViewUrl: String?
    var previewUrl: String?
    var artworkUrl30: String?
    var artworkUrl60: String?
    var artworkUrl100: String?
    var collectionPrice: Double?
    var trackPrice: Double?
    var collectionHdPrice: Double?
    var trackHdPrice: Double?
    var releaseDate: String?
    var collectionExplicitness: String?
    var trackExplicitness: String?
    var discCount: Int?
    var discNumber: Int?
    var trackCount: Int?
    var trackNumber: Int?
    var trackTimeMillis: Int64?
    var country: String?
    var currency: String?
    var primaryGenreName: String?
    var contentAdvisory: String?
    var longDescription: String?
    var hasITunesExtras: Bool?
    var trackRentalPrice: Double?
    var trackHdRentalPrice: Double?
    var shortDescription: String?
    var contentAdvisoryRating: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        wrapperType <- map["wrapperType"]
        kind <- map["kind"]
        collectionId <- map["collectionId"]
        trackId <- map["trackId"]
        artistName <- map["artistName"]
        collectionName <- map["collectionName"]
        trackName <- map["trackName"]
        collectionCensoredName <- map["collectionCensoredName"]
        trackCensoredName <- map["trackCensoredName"]
        collectionArtistId <- map["collectionArtistId"]
        collectionArtistViewUrl <- map["collectionArtistViewUrl"]
        collectionViewUrl <- map["collectionViewUrl"]
        trackViewUrl <- map["trackViewUrl"]
        previewUrl <- map["previewUrl"]
        artworkUrl30 <- map["artworkUrl30"]
        artworkUrl60 <- map["artworkUrl60"]
        artworkUrl100 <- map["artworkUrl100"]
        collectionPrice <- map["collectionPrice"]
        trackPrice <- map["trackPrice"]
        collectionHdPrice <- map["collectionHdPrice"]
        trackHdPrice <- map["trackHdPrice"]
        releaseDate <- map["releaseDate"]
        collectionExplicitness <- map["collectionExplicitness"]
        trackExplicitness <- map["trackExplicitness"]
        discCount <- map["discCount"]
        discNumber <- map["discNumber"]
        trackCount <- map["trackCount"]
        trackNumber <- map["trackNumber"]
        trackTimeMillis <- map["trackTimeMillis"]
        country <- map["country"]
        currency <- map["currency"]
        primaryGenreName <- map["primaryGenreName"]
        contentAdvisory <- map["contentAdvisory"]
        longDescription <- map["longDescription"]
        hasITunesExtras <- map["hasITunesExtras"]
        trackRentalPrice <- map["trackRentalPrice"]
        trackHdPrice <- map["trackHdPrice"]
        shortDescription <- map["shortDescription"]
        contentAdvisoryRating <- map["contentAdvisoryRating"]
    }
}
