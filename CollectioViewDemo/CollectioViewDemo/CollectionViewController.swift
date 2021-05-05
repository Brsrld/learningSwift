import UIKit

private let reuseIdentifier = "Cell"

let dataSource: [String] = ["USA","Brazil","Germany","Turkey","China","Russia","New Zeland","Taiwan","Paraguay",]

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if  let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CollectionViewCell {
            
            countryCell.configure(with: dataSource[indexPath.row])
            
            cell = countryCell
        }
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dataSource[indexPath.row])
    }

}
