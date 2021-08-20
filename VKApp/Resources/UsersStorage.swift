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
                                name: "Swift Education School",
                                description: "Multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community.",
                                logo: "logo-swift1",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "concert1",
                            likeCount: 1, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: true),
                        PhotoModel(
                            name: "photo02",
                            fileName: "concert2",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo03",
                            fileName: "concert3",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo04",
                            fileName: "concert4",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert5",
                            fileName: "concert5",
                            likeCount: 5, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert6",
                            fileName: "concert6",
                            likeCount: 6, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert7",
                            fileName: "concert7",
                            likeCount: 7, commentMessages: ["34343","343434"],
                            isLike: false),
                        PhotoModel(
                            name: "concert8",
                            fileName: "concert8",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert9",
                            fileName: "concert9",
                            likeCount: 9, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert10",
                            fileName: "concert10",
                            likeCount: 10, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert11",
                            fileName: "concert11",
                            likeCount: 11, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert12",
                            fileName: "concert12",
                            likeCount: 12, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert13",
                            fileName: "concert13",
                            likeCount: 13, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert14",
                            fileName: "concert14",
                            likeCount: 14, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert15",
                            fileName: "concert15",
                            likeCount: 15, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert16",
                            fileName: "concert16",
                            likeCount: 16, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "concert17",
                            fileName: "concert17",
                            likeCount: 17, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
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
                            name: "photo19-copy",
                            fileName: "photo19",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo11",
                            fileName: "photo11",
                            likeCount: 35, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo12",
                            fileName: "photo12",
                            likeCount: 9, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo13",
                            fileName: "photo13",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo14",
                            fileName: "photo14",
                            likeCount: 1, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo15",
                            fileName: "photo15",
                            likeCount: 5, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo16",
                            fileName: "photo16",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo17",
                            fileName: "photo17",
                            likeCount: 77, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo18",
                            fileName: "photo18",
                            likeCount: 27, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo19",
                            fileName: "photo19",
                            likeCount: 9, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
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
                            name: "photo20",
                            fileName: "photo20",
                            likeCount: 28, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo21",
                            fileName: "photo21",
                            likeCount: 12, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo22",
                            fileName: "photo22",
                            likeCount: 30, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo23",
                            fileName: "photo23",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo24",
                            fileName: "photo24",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo25",
                            fileName: "photo25",
                            likeCount: 7, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo26",
                            fileName: "photo26",
                            likeCount: 5, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo27",
                            fileName: "photo27",
                            likeCount: 7, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo28",
                            fileName: "photo28",
                            likeCount: 89, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo29",
                            fileName: "photo29",
                            likeCount: 21, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
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
                            name: "photo30",
                            fileName: "photo30",
                            likeCount: 6, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo31",
                            fileName: "photo31",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo32",
                            fileName: "photo32",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo33",
                            fileName: "photo33",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo34",
                            fileName: "photo34",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo35",
                            fileName: "photo35",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo36",
                            fileName: "photo36",
                            likeCount: 5, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo37",
                            fileName: "photo37",
                            likeCount: 9, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo38",
                            fileName: "photo38",
                            likeCount: 10, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo39",
                            fileName: "photo39",
                            likeCount: 14, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
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
                            name: "photo40",
                            fileName: "photo40",
                            likeCount: 48, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo41",
                            fileName: "photo41",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo42",
                            fileName: "photo42",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo43",
                            fileName: "photo43",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo44",
                            fileName: "photo44",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo45",
                            fileName: "photo45",
                            likeCount: 5, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo46",
                            fileName: "photo46",
                            likeCount: 7, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo47",
                            fileName: "photo47",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo48",
                            fileName: "photo48",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo49",
                            fileName: "photo49",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
            UserModel(
                userName: "nstoyan",
                name: "Nikita",
                surName: "Stoyan",
                password: "123",
                avatar: "avatar6", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "KKND",
                                description: "Cool Game!",
                                logo: "kknd",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo50",
                            fileName: "photo30",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo51",
                            fileName: "photo51",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo52",
                            fileName: "photo52",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo53",
                            fileName: "photo53",
                            likeCount: 4, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo54",
                            fileName: "photo54",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo55",
                            fileName: "photo55",
                            likeCount: 7, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo56",
                            fileName: "photo56",
                            likeCount: 9, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo57",
                            fileName: "photo57",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo58",
                            fileName: "photo58",
                            likeCount: 1, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo59",
                            fileName: "photo59",
                            likeCount: 8, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
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
                            name: "photo60",
                            fileName: "photo60",
                            likeCount: 56, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo61",
                            fileName: "photo61",
                            likeCount: 26, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo62",
                            fileName: "photo62",
                            likeCount: 53, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo63",
                            fileName: "photo63",
                            likeCount: 62, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo64",
                            fileName: "photo64",
                            likeCount: 2, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo65",
                            fileName: "photo65",
                            likeCount: 16, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo66",
                            fileName: "photo66",
                            likeCount: 73, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo67",
                            fileName: "photo67",
                            likeCount: 27, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo68",
                            fileName: "photo68",
                            likeCount: 93, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),
                        PhotoModel(
                            name: "photo69",
                            fileName: "photo69",
                            likeCount: 3, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false),]),
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
                                subscribersCount: 3433)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
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
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
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
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "kirill", name: "Kirill",
                surName: "Rybakov",
                password: "123",
                avatar: "avatar19", location: "Sosensky",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "serg",
                name: "Sergei",
                surName: "Sinoshin",
                password: "123",
                avatar: "avatar20", location: "Aprelevka",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "potter",
                name: "Harry",
                surName: "Potter",
                password: "123",
                avatar: "avatar21", location: "Hogwarts",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "gates",
                name: "Bill",
                surName: "Gates",
                password: "123",
                avatar: "avatar22", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "user1",
                name: "Kris",
                surName: "Novoselich",
                password: "123",
                avatar: "avatar23", location: "Niderlands",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "kurt",
                name: "Kurt",
                surName: "Cobain",
                password: "123",
                avatar: "avatar24", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "hawk",
                name: "Tony",
                surName: "Hawk",
                password: "123",
                avatar: "avatar25", location: "Skate City",
                favGroups: [GroupModel(
                                name: "Tony Hawks Pro Skater 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "santa",
                name: "Santa",
                surName: "Klaus",
                password: "123",
                avatar: "avatar26", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "photo14",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "bill",
                name: "Bill",
                surName: "Margera",
                password: "123",
                avatar: "avatar27", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "photo01",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "jack",
                name: "Jack",
                surName: "Vorobey",
                password: "123",
                avatar: "avatar28", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "van",
                name: "Van",
                surName: "Dam",
                password: "123",
                avatar: "avatar29", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "karenina",
                name: "Anna",
                surName: "Karenina",
                password: "123",
                avatar: "avatar30", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "pivovar",
                name: "Ivan",
                surName: "Taranov",
                password: "123",
                avatar: "avatar31", location: "Moscow",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "ivarlamov",
                name: "Ilya",
                surName: "Varlamov",
                password: "123",
                avatar: "avatar32", location: "Moscow",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "yan", name: "Yan",
                surName: "Solomein",
                password: "123",
                avatar: "avatar33", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "arnold",
                name: "Arnold",
                surName: "Davis",
                password: "123",
                avatar: "avatar34", location: "Saint Petersburg",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "joshua", name: "Joshua",
                surName: "Freeman",
                password: "123",
                avatar: "avatar35", location: "Kazan",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "kelley",
                name: "Dwayne",
                surName: "Kelley",
                password: "123",
                avatar: "avatar36", location: "Tula",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "john",
                name: "John",
                surName: "Jackson",
                password: "123",
                avatar: "avatar37", location: "Kaluga",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "lloydsnyder",
                name: "Lloyd",
                surName: "Snyder",
                password: "123",
                avatar: "avatar38", location: "Dmitrov",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "lindawarren", name: "Linda",
                surName: "Warren",
                password: "123",
                avatar: "avatar39", location: "Sosensky",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "jbowman",
                name: "Jamie",
                surName: "Bowman",
                password: "123",
                avatar: "avatar40", location: "Aprelevka",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "cfletcher",
                name: "Chris",
                surName: "Fletcher",
                password: "123",
                avatar: "avatar41", location: "Hogwarts",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "iryan",
                name: "Irene",
                surName: "Ryan",
                password: "123",
                avatar: "avatar42", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "carlgonzales",
                name: "Carl",
                surName: "Gonzales",
                password: "123",
                avatar: "avatar43", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "coleman",
                name: "Kimberly",
                surName: "Coleman",
                password: "123",
                avatar: "avatar44", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "kenneth",
                name: "Kenneth",
                surName: "Kelley",
                password: "123",
                avatar: "avatar45", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "nellie",
                name: "Nellie",
                surName: "Hart",
                password: "123",
                avatar: "avatar46", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "gloria",
                name: "Gloria",
                surName: "Johnson",
                password: "123",
                avatar: "avatar47", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "marion",
                name: "Marion",
                surName: "Grant",
                password: "123",
                avatar: "avatar48", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "robert",
                name: "Robert",
                surName: "Jackson",
                password: "123",
                avatar: "avatar49", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
            UserModel(
                userName: "alberto",
                name: "Alberto",
                surName: "Gonzales",
                password: "123",
                avatar: "avatar50", location: "Unated States of America",
                favGroups: [GroupModel(
                                name: "Destiny 2",
                                description: "Cool Game!",
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"],
                            isLike: false)]),
        ]
    }
    
    static func getIndexByUsername(username: String) -> Int!  {
        Storage.allUsers.firstIndex(where: { $0.userName == username })
    }
}



