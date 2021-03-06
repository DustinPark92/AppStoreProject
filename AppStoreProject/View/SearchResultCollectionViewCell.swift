//
//  SearchResultCell.swift
//  AppStoreProject
//
//  Created by Dustin on 2021/10/06.
//

import UIKit

class SearchResultCollectionViewCell: BaseCollectionViewCell {
    
    private var screenShotImage: String? {
        didSet {
            guard let image = screenShotImage else { return }
            
        }
        
    }
    
    
    let screenShotImageView = UIImageView().then {
        $0.clipsToBounds = true
        
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(screenShotImageView)
        screenShotImageView.snp.makeConstraints {
            $0.top.left.right.bottom.equalTo(self)
        }


    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setUpData(screenShotImage: String){
        self.screenShotImage = screenShotImage
        
    }

    
    
}
