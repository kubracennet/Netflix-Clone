//
//  Movie.swift
//  Netflix Clone
//
//  Created by Kübra Cennet Yavaşoğlu on 1.03.2023.
//

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie] // Bu kısma kadar movie yi bulamadığı için xcode uyarı veriyor bunun için yapacağım şey yeni yapı oluşturmak
}

struct Movie: Codable {
    // Build ettiğim için kod açıklama kısmında yer alan yerden bakarak oluturacağım geri kalanı. Aşağıdan baktığımda basitçe ihtiyacım olan "id" belki bir "media type", "original language", "original title" genel olarak bunlara ihtiyacım var
    //Modele bakarak ihtiyacım olanları belirlemiş oldum
    let id: Int
    let media_type: String? //"?" optional yapıyorum ki film veri tabanı bize veri sağlamadıysa uygulamam çökmeyecek ? sayesinde
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_data: String?
    let vote_average: Double
    
}







