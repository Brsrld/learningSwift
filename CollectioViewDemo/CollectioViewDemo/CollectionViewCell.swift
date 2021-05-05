import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var Country: UILabel!
    
    func configure (with countryName: String){
        
        Country.text = countryName
        print(countryName)
    }
}
