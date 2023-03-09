//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Kübra Cennet Yavaşoğlu on 7.03.2023.
//

import Foundation
   //tems =     (
    //{
    //etag = "4s4mS_6IhdVC07lFD34NV1l_V58";
    //id =             {
    //kind = "youtube#video";
    //videoId = 9ao4FEaDGhQ;
    //};
    //kind = "youtube#searchResult";
    //}, Buda yer alan başlıklara gçre struct'ları belirledim. Bunu youtube id bağladığımda kod çıktısından elde ettim.

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}
    
struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
    
}
