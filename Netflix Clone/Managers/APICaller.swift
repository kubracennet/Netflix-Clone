//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Kübra Cennet Yavaşoğlu on 28.02.2023.
//

import Foundation
//API'den çekeceğim tv içerikleri için oluşturdum dosyayı. Trend olan filmleri alacağım işlem

struct Constants {
    
    static let API_KEY = "b4512d3a48644295617d7254156117ae" //API->API Key (v3 auth) Number
    static let baseURL = "https://api.themoviedb.org" //Dev.-> Try it out send request apı number
    
}

enum APIError: Error {
    
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        //Dev. apı number devamındaki kod. Apı'ye izin vermesi için gerekli kodu sonrasında yazdım.
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(results.results))

            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
        
    }
    //Build yapınca ekranda yer alan trendtv title için oluşturuldu
    
    func getTrendingTvs(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
                
            }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
        
    }
}














