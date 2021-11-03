//
//  CellTableViewCell.swift
//  RestAPIPractices
//
//  Created by Halil İbrahim Öztekin on 3.11.2021.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet var signature: UILabel!
    @IBOutlet var body: UILabel!
    @IBOutlet var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(petition : Petition) {
        
        body.text = petition.body
        title.text = petition.title
        signature.text = String(petition.signatureCount)
    }

}
