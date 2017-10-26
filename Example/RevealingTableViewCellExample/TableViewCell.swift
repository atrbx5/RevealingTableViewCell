//
//  TableViewCell.swift
//  RevealingTableViewCellExample
//
//  Created by Andrey Pervushin on 26.10.2017.
//  Copyright © 2017 Nikolay Suvandzhiev. All rights reserved.
//

import UIKit
import RevealingTableViewCell

class TableViewCell: RevealingTableViewCell, UICollectionViewDataSource {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        return cell
    }

}
