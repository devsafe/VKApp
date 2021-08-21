//
//  FeedStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import Foundation

class FeedStorage {
    
    let usersFeed: [PostModel]
    
    init() {
        
        usersFeed = [
            PostModel(author: Storage.allUsers[30], timeStamp: "17.08.2021", text: "The English rock band Joy Division released their debut studio album “Unknown Pleasures” 40 years ago. The front cover doesn’t feature any words, only a now iconic black and white data graph showing 80 wiggly lines representing a signal from a pulsar in space. To mark the anniversary of the album, we recorded a signal from the same pulsar with a radio telescope in Jodrell Bank Observatory, only 14 miles (23 km) away from Strawberry Studios where the album was recorded.", media: "concert1", likeCount: 2, commentMessages: ["ouch"], isLike: false),
            PostModel(author: Storage.allUsers[0], timeStamp: "13.08.2021", text: "To mark the anniversary of the album, we recorded a signal from the same pulsar with a radio telescope in Jodrell Bank Observatory, only 14 miles (23 km) away from Strawberry Studios where the album was recorded.", media: "concert10", likeCount: 30, commentMessages: ["yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[1], timeStamp: "11.08.2021", text: "Peter Saville – graphic designer and co-founder of Factory Records – designed the album cover based on a picture spotted by band member Bernard Sumner in an encyclopaedia. The picture itself can be traced to the work of the postgraduate student Harold Craft, who published the image in his PhD thesis in 1970.", media: "concert2", likeCount: 76, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[2], timeStamp: "10.08.2021", text: "Unknown treasures in space. What we see in this enigmatic image is the signal produced by a pulsar known as B1919+21, the first pulsar ever discovered. A pulsar is formed during the violent death of a star several times more massive than our sun. These stars go out with a bang known as a supernova explosion, during which the core of the exploding star is compressed in an almost perfect sphere with a radius of little more than 10 km. What’s formed is called a neutron star.", media: "concert1", likeCount: 6, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[3], timeStamp: "9.08.2021", text: "This stellar remnant, still more massive than our sun, is so extremely dense.", media: "concert3", likeCount: 63, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[4], timeStamp: "8.08.2021", text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.", media: "concert4", likeCount: 92, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[5], timeStamp: "29.07.2021", text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.", media: "concert5", likeCount: 12, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false),
            PostModel(author: Storage.allUsers[6], timeStamp: "19.07.2021", text: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.", media: "concert6", likeCount: 42, commentMessages: ["ouch","Hello!","bad article","yoaa!","hi!",":)"], isLike: false)]
    }
        static func getPostsForUsername(username: String) -> [PostModel]{
            var tempPosts: [PostModel]
            print(username)
            if username != "" {
                tempPosts = Storage.feedNews.filter{ $0.author.userName.contains(username)}
            } else {
                tempPosts = Storage.feedNews
            }
            return tempPosts
        }
}
