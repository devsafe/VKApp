//
//  UserStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

class UserStorage {
    
    let friends: [UserModel]
    let allFriends: [UserModel]
    
    init() {
        friends = [
            UserModel(
                name: "Boris",
                surName: "Sobolev",
                userName: "admin",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                            isLike: false)])
        ]
        allFriends = [
            UserModel(
                name: "Boris",
                surName: "Sobolev",
                userName: "admin",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                name: "Andrey",
                surName: "Pashkevich",
                userName: "apashkevich",
                password: "123",
                avatar: "avatar01",
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
                name: "Artem",
                surName: "Lamzov",
                userName: "alamzov",
                password: "123",
                avatar: "avatar02",
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
                            isLike: false)])
        ]
    }
}
