//
//  NewsfeedModels.swift
//  VKNewsFeed
//
//  Created by Дмитрий Межевич on 8.11.21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum Newsfeed {
   
  enum Model {
      
    struct Request {
      enum RequestType {
        case getNewsFeed
          case revealPostId(postId: Int)
          case getUserData
          case getNewBatch
      }
    }
      
    struct Response {
      enum ResponseType {
          case presentNewsFeed(feed: FeedResponse, postIds: [Int])
          case presentUserData(data: UserData)
          case presentLoaderView
      }
    }
      
    struct ViewModel {
      enum ViewModelData {
          case displayNewsfeed(feedViewModel: FeedViewModel)
          case displayAvatarUser(titelViewModel: UserViewModel)
          case displayLoaderView
      }
    }
      
  }
  
}

struct UserViewModel: TitelViewModel {
    var photoUrlString: String?
}

struct FeedViewModel {
    struct Cell: FeedCellViewModel {
        let postId: Int
        
        var iconUrlString: String
        var name: String
        var date: String
        var text: String
        var likes: String?
        var comments: String?
        var shares: String?
        var views: String?
        var photoAttecments: [FeedCellPhotoAttachmentViewModel]
        var layoutCell: FrameElements
    }
    
    struct FeedCellPhotoAttachman: FeedCellPhotoAttachmentViewModel {
        var photoUrlString: String?
        var width: Int
        var height: Int
    }
    
    let cells: [Cell]
    let counterPosts: String?
}
