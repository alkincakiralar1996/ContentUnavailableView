//
//  Character.swift
//  ContentUnavailableView
//
//  Created by Alkın Çakıralar on 29.01.2024.
//

import Foundation

struct Character: Identifiable {
    let id = UUID()
    let name: String
    let photo: URL?

    init(name: String, photo: URL? = nil) {
        self.name = name
        self.photo = photo
    }

    static func getDummyContactList() -> [Character] {
        [
            .init(
                name: "Professor",
                photo: .init(
                    string: "https://www.looper.com/img/gallery/why-the-professor-from-money-heist-looks-so-familiar/intro-1587390568.jpg"
                )
            ),
            .init(
                name: "Lisboa",
                photo: .init(
                    string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd6WNmoT_f32AdmOaYhCyMyn3g-rJJOw2geA&usqp=CAU"
                )
            ),
            .init(
                name: "Tokyo",
                photo: .init(
                    string: "https://www.cumhuriyet.com.tr/Archive/2021/9/4/1866152/kapak_172324.jpg"
                )
            ),
            .init(
                name: "Berlin",
                photo: .init(
                    string: "https://img-s1.onedio.com/id-61a7c0e44ee25fb04fda51d0/rev-0/w-600/h-457/f-jpg/s-38c7f3428378c6c677eb4a6644c03271b70b8fd9.jpg"
                )
            ),
            .init(
                name: "Nairobi",
                photo: .init(
                    string: "https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Nairobi.Money-Heist.webp"
                )
            ),
            .init(
                name: "Rio",
                photo: .init(
                    string: "https://im.indiatimes.in/content/2020/Aug/RIO1_5f2ba5b149f97.jpg?w=1200&h=900&cc=1"
                )
            ),
            .init(
                name: "Denver",
                photo: .init(
                    string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXSNJ3z8inlJtFhEFrpmAF5OhR8K7avOVkhQY8azueGCW1t-pduAcba2diytIzeWJJUUQ&usqp=CAU"
                )
            ),
            .init(
                name: "Moscow",
                photo: .init(
                    string: "https://cdn.images.express.co.uk/img/dynamic/20/590x/secondary/Money-Heist-Moscow-3172834.jpg?r=1627524681681"
                )
            ),
            .init(
                name: "Oslo",
                photo: .init(
                    string: "https://pm1.aminoapps.com/6928/7a57963c587a93786015334adbd42f8fd6a2996fr1-290-254v2_00.jpg"
                )
            ),
            .init(
                name: "Stockholm",
                photo: .init(
                    string: "https://m.media-amazon.com/images/M/MV5BYWZkMmZjMjgtOTFhMy00OGRjLTlmNTctZTc4YjNiNmQ3ZmUxXkEyXkFqcGdeQXVyMzQ3Nzk5MTU@._V1_.jpg"
                )
            )
        ]
    }
}
