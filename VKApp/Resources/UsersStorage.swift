//
//  UserStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

class UserStorage {
    
    let allUsers: [UserModel]
    
    init() {
        
        allUsers = [
            UserModel(
                userName: "admin", name: "Boris",
                surName: "Sobolev",
                password: "123",
                avatar: "avatar26", location: "Zelenograd",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),PhotoModel(
                                name: "photo01",
                                fileName: "photo01",
                                likeCount: 23,
                                isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo02",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo03",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo04",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo05",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo06",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo07",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo08",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo09",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo10",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        
                ]),
            UserModel(
                userName: "alamzov",
                name: "Artem",
                surName: "Lamzov",
                password: "123",
                avatar: "avatar2",
                location: "Moscow District",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "apashkevich",
                name: "Andrey",
                surName: "Pashkevich",
                password: "123",
                avatar: "avatar3", location: "Moscow",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "iermolov",
                name: "Ilya",
                surName: "Ermolov",
                password: "123",
                avatar: "avatar4", location: "Germany",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "atrue", name: "Andrey",
                surName: "Trushelev",
                password: "123",
                avatar: "avatar5", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "nstoyan",
                name: "Nikita",
                surName: "Stoyan",
                password: "123",
                avatar: "avatar6", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "ovedmid", name: "Oleg",
                surName: "Vedmid",
                password: "123",
                avatar: "avatar7", location: "Kazan",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "amir",
                name: "Amir",
                surName: "Amiroslanov",
                password: "123",
                avatar: "avatar8", location: "Tula",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "stanly",
                name: "Stanly",
                surName: "March",
                password: "123",
                avatar: "avatar9", location: "Kaluga",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "petrov",
                name: "Sergey",
                surName: "Petrov",
                password: "123",
                avatar: "avatar10", location: "Dmitrov",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "kirill", name: "Kirill",
                surName: "Rybakov",
                password: "123",
                avatar: "avatar11", location: "Sosensky",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "serg",
                name: "Sergei",
                surName: "Sinoshin",
                password: "123",
                avatar: "avatar12", location: "Aprelevka",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "potter",
                name: "Harry",
                surName: "Potter",
                password: "123",
                avatar: "avatar13", location: "Hogwarts",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "apashkevich",
                name: "Andrey",
                surName: "Pashkevich",
                password: "123",
                avatar: "avatar3", location: "Moscow",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "iermolov",
                name: "Ilya",
                surName: "Ermolov",
                password: "123",
                avatar: "avatar4", location: "Germany",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "atrue", name: "Andrey",
                surName: "Trushelev",
                password: "123",
                avatar: "avatar5", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "nstoyan",
                name: "Nikita",
                surName: "Stoyan",
                password: "123",
                avatar: "avatar6", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "ovedmid", name: "Oleg",
                surName: "Vedmid",
                password: "123",
                avatar: "avatar7", location: "Kazan",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "amir",
                name: "Amir",
                surName: "Amiroslanov",
                password: "123",
                avatar: "avatar8", location: "Tula",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "stanly",
                name: "Stanly",
                surName: "March",
                password: "123",
                avatar: "avatar9", location: "Kaluga",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "petrov",
                name: "Sergey",
                surName: "Petrov",
                password: "123",
                avatar: "avatar10", location: "Dmitrov",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "kirill", name: "Kirill",
                surName: "Rybakov",
                password: "123",
                avatar: "avatar11", location: "Sosensky",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "serg",
                name: "Sergei",
                surName: "Sinoshin",
                password: "123",
                avatar: "avatar12", location: "Aprelevka",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "potter",
                name: "Harry",
                surName: "Potter",
                password: "123",
                avatar: "avatar13", location: "Hogwarts",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar14", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false)]),
        ]
    }
}
