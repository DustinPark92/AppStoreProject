//
//  ImageCacheManger.swift
//  AppStoreProject
//
//  Created by 박병호 on 2021/11/19.
//

import UIKit



protocol ImageCacheManagerDelegate {
    func cacheStorages()
    func imageDiskCasheStorage(data: Data, savePath: NSString)
    func imageMemoryCacheStorage(url : String) -> UIImage
}

class ImageCacheStorage {
    static let shared = NSCache<NSString, UIImage>()
    private init() {}
    
}


class ImageCacheManager {


}

extension ImageCacheManager : ImageCacheManagerDelegate {
    
    
    func imageDiskCasheStorage(data: Data, savePath: NSString) {
        

    }

    
    func cacheStorages() {
        
    }
    
    
    func imageMemoryCacheStorage(url : String) -> UIImage {
        let cachedKey = NSString(string: url).lastPathComponent
        if let cachedImage = ImageCacheStorage.shared.object(forKey: cachedKey as NSString ) {
            return cachedImage
        }
        
        return UIImage()

    }
    
}
