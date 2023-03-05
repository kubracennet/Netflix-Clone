//
//  Title.swift
//  Netflix Clone
//
//  Created by Kübra Cennet Yavaşoğlu on 5.03.2023.
//

import Foundation

//TV ve Movie' da aynı içerik başlıkları olduğu için farklı dosyalar oluşturmadan tek dosya title adı altında topladım. 

struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
