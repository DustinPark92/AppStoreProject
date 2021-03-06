//
//  SearchResultHeaderView.swift
//  AppStoreProject
//
//  Created by Dustin on 2021/10/14.
//

import UIKit

class SearchResultHeaderView: UICollectionReusableView {
    
    private var searchInfo: SearchResultModel? {
        didSet {
            guard let info = searchInfo else { return }
            
            if let title = info.trackName {
                appTitleLabel.text = title
            }
            
            if let subTitle = info.description {
                appSubTitleLabel.text = subTitle
            }
            
            if let logoImage = info.artworkUrl60,
               let path = info.trackName {
            
                appLogoImageView.setImage(fromUrlString: logoImage)
                
            }
            
            
            
        }
        
    }
    
    let appLogoImageView = UIImageView().then {
        $0.image = UIImage(named: "kakaotalk-icon")
        $0.contentMode = .scaleAspectFill
        
    }
    
    let appTitleLabel = UILabel().then {
        $0.numberOfLines = 1
        $0.font = UIFont.systemFont(ofSize: 20)
    }
    
    
    let appSubTitleLabel = UILabel().then {
        $0.numberOfLines = 1
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    
    let openButton = UIButton().then {
        $0.setTitle("열기", for: .normal)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .lightGray
    }
        
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(appLogoImageView)
        appLogoImageView.snp.makeConstraints {
            $0.top.equalTo(self).offset(10)
            $0.left.equalTo(self).offset(10)
            $0.height.width.equalTo(80)
        }
        
        addSubview(appTitleLabel)
        appTitleLabel.snp.makeConstraints {
            $0.top.equalTo(self).offset(10)
            $0.left.equalTo(appLogoImageView.snp.right).offset(10)
        }
        
        addSubview(appSubTitleLabel)
        appSubTitleLabel.snp.makeConstraints {
            $0.top.equalTo(appTitleLabel.snp.bottom)
            $0.left.equalTo(appLogoImageView.snp.right).offset(10)
        }
        
        addSubview(openButton)
        openButton.snp.makeConstraints {
            $0.top.equalTo(self).offset(20)
            $0.left.equalTo(appSubTitleLabel.snp.right).offset(20)
            $0.right.equalTo(self).offset(-20)
            $0.width.equalTo(50)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpData(searchInfo: SearchResultModel?){
        self.searchInfo = searchInfo
    }
    
    
    
        
}
