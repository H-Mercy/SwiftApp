//
//  DemoTableViewCell.swift
//  Swift_firstApp
//
//  Created by Micheal豆 on 2019/5/24.
//  Copyright © 2019 Micheal豆. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

   

    
    var TitleLabel:UILabel?
    var DetailLabel:UILabel?
     var iconImageV:UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
       
        
        self.TitleLabel=UILabel()
        
        self.contentView.addSubview(self.TitleLabel!)
        
        self.DetailLabel=UILabel()
        self.DetailLabel?.numberOfLines = 3;
        self.DetailLabel?.textAlignment = .left;
        self.contentView.addSubview(self.DetailLabel!)
        
        self.iconImageV=UIImageView()
        
        self.contentView.addSubview(self.iconImageV!)
        setUpviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpviews() {
        
       
        
        if self.TitleLabel != nil {
            
            self.TitleLabel?.frame = CGRect(x: 15, y: 15, width: 375, height: 20);
        }
        
        
        if self.DetailLabel != nil {
            
            self.DetailLabel?.frame = CGRect(x: 15, y: 50, width: 250, height: 50);
        }
        if self.iconImageV != nil {
            
            self.iconImageV?.frame = CGRect(x: 275, y: 20, width: 90, height: 90);
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
