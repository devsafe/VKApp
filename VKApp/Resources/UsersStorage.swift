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
                                description: "Wow!",
                                logo: "logo-swift1",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo02",
                            fileName: "photo02",
                            likeCount: 1,
                            isLike: false),
                        PhotoModel(
                            name: "photo03",
                            fileName: "photo03",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo04",
                            fileName: "photo04",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo05",
                            fileName: "photo05",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo06",
                            fileName: "photo06",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo07",
                            fileName: "photo07",
                            likeCount: 6,
                            isLike: false),
                        PhotoModel(
                            name: "photo08",
                            fileName: "photo08",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo09",
                            fileName: "photo09",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo10",
                            fileName: "photo10",
                            likeCount: 44,
                            isLike: false),
                        PhotoModel(
                            name: "photo11",
                            fileName: "photo11",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo12",
                            fileName: "photo12",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo13",
                            fileName: "photo13",
                            likeCount: 9,
                            isLike: false),
                        PhotoModel(
                            name: "photo014",
                            fileName: "photo14",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo15",
                            fileName: "photo15",
                            likeCount: 2,
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
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo11",
                            fileName: "photo11",
                            likeCount: 35,
                            isLike: false),
                        PhotoModel(
                            name: "photo12",
                            fileName: "photo12",
                            likeCount: 9,
                            isLike: false),
                        PhotoModel(
                            name: "photo13",
                            fileName: "photo13",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo14",
                            fileName: "photo14",
                            likeCount: 1,
                            isLike: false),
                        PhotoModel(
                            name: "photo15",
                            fileName: "photo15",
                            likeCount: 5,
                            isLike: false),
                        PhotoModel(
                            name: "photo16",
                            fileName: "photo16",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo17",
                            fileName: "photo17",
                            likeCount: 77,
                            isLike: false),
                        PhotoModel(
                            name: "photo18",
                            fileName: "photo18",
                            likeCount: 27,
                            isLike: false),
                        PhotoModel(
                            name: "photo19",
                            fileName: "photo19",
                            likeCount: 9,
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
                            likeCount: 28,
                            isLike: false),
                        PhotoModel(
                            name: "photo21",
                            fileName: "photo21",
                            likeCount: 12,
                            isLike: false),
                        PhotoModel(
                            name: "photo22",
                            fileName: "photo22",
                            likeCount: 30,
                            isLike: false),
                        PhotoModel(
                            name: "photo23",
                            fileName: "photo23",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo24",
                            fileName: "photo24",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo25",
                            fileName: "photo25",
                            likeCount: 7,
                            isLike: false),
                        PhotoModel(
                            name: "photo26",
                            fileName: "photo26",
                            likeCount: 5,
                            isLike: false),
                        PhotoModel(
                            name: "photo27",
                            fileName: "photo27",
                            likeCount: 7,
                            isLike: false),
                        PhotoModel(
                            name: "photo28",
                            fileName: "photo28",
                            likeCount: 89,
                            isLike: false),
                        PhotoModel(
                            name: "photo29",
                            fileName: "photo29",
                            likeCount: 21,
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
                            likeCount: 6,
                            isLike: false),
                        PhotoModel(
                            name: "photo31",
                            fileName: "photo31",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo32",
                            fileName: "photo32",
                            likeCount: 8,
                            isLike: false),
                        PhotoModel(
                            name: "photo33",
                            fileName: "photo33",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo34",
                            fileName: "photo34",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo35",
                            fileName: "photo35",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo36",
                            fileName: "photo36",
                            likeCount: 5,
                            isLike: false),
                        PhotoModel(
                            name: "photo37",
                            fileName: "photo37",
                            likeCount: 9,
                            isLike: false),
                        PhotoModel(
                            name: "photo38",
                            fileName: "photo38",
                            likeCount: 10,
                            isLike: false),
                        PhotoModel(
                            name: "photo39",
                            fileName: "photo39",
                            likeCount: 14,
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
                            likeCount: 48,
                            isLike: false),
                        PhotoModel(
                            name: "photo41",
                            fileName: "photo41",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo42",
                            fileName: "photo42",
                            likeCount: 8,
                            isLike: false),
                        PhotoModel(
                            name: "photo43",
                            fileName: "photo43",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo44",
                            fileName: "photo44",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo45",
                            fileName: "photo45",
                            likeCount: 5,
                            isLike: false),
                        PhotoModel(
                            name: "photo46",
                            fileName: "photo46",
                            likeCount: 7,
                            isLike: false),
                        PhotoModel(
                            name: "photo47",
                            fileName: "photo47",
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo48",
                            fileName: "photo48",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo49",
                            fileName: "photo49",
                            likeCount: 8,
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
                            likeCount: 3,
                            isLike: false),
                        PhotoModel(
                            name: "photo51",
                            fileName: "photo51",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo52",
                            fileName: "photo52",
                            likeCount: 8,
                            isLike: false),
                        PhotoModel(
                            name: "photo53",
                            fileName: "photo53",
                            likeCount: 4,
                            isLike: false),
                        PhotoModel(
                            name: "photo54",
                            fileName: "photo54",
                            likeCount: 23,
                            isLike: false),
                        PhotoModel(
                            name: "photo55",
                            fileName: "photo55",
                            likeCount: 7,
                            isLike: false),
                        PhotoModel(
                            name: "photo56",
                            fileName: "photo56",
                            likeCount: 9,
                            isLike: false),
                        PhotoModel(
                            name: "photo57",
                            fileName: "photo57",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo58",
                            fileName: "photo58",
                            likeCount: 1,
                            isLike: false),
                        PhotoModel(
                            name: "photo59",
                            fileName: "photo59",
                            likeCount: 8,
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
                            likeCount: 56,
                            isLike: false),
                        PhotoModel(
                            name: "photo61",
                            fileName: "photo61",
                            likeCount: 26,
                            isLike: false),
                        PhotoModel(
                            name: "photo62",
                            fileName: "photo62",
                            likeCount: 53,
                            isLike: false),
                        PhotoModel(
                            name: "photo63",
                            fileName: "photo63",
                            likeCount: 62,
                            isLike: false),
                        PhotoModel(
                            name: "photo64",
                            fileName: "photo64",
                            likeCount: 2,
                            isLike: false),
                        PhotoModel(
                            name: "photo65",
                            fileName: "photo65",
                            likeCount: 16,
                            isLike: false),
                        PhotoModel(
                            name: "photo66",
                            fileName: "photo66",
                            likeCount: 73,
                            isLike: false),
                        PhotoModel(
                            name: "photo67",
                            fileName: "photo67",
                            likeCount: 27,
                            isLike: false),
                        PhotoModel(
                            name: "photo68",
                            fileName: "photo68",
                            likeCount: 93,
                            isLike: false),
                        PhotoModel(
                            name: "photo69",
                            fileName: "photo69",
                            likeCount: 3,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
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
                                logo: "destiny2",
                                fullDescription: "Wow it is amazing game!",
                                subscribersCount: 343)],
                photo: [PhotoModel(
                            name: "photo01",
                            fileName: "photo01",
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "tomb",
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "petrov",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "kirill", name: "Linda",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "serg",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "potter",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
            UserModel(
                userName: "gates",
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
                            likeCount: 23,
                            isLike: false)]),
        ]
    }
}
