//
//  TrackList.swift
//  ArtCover
//
//  Created by Beibarys Shagay on 23.03.2023.
//

import UIKit

class TrackList: UITableViewController {

    let imageNames = ["Alberto Ruiz - 7 Elements (Original Mix)",
                      "Dave Wincent - Red Eye (Original Mix)",
                      "E-Spectro - End Station (Original Mix)",
                      "Edna Ann - Phasma (Konstantin Yoodza Remix)",
                      "Ilija Djokovic - Delusion (Original Mix)",
                      "John Baptiste - Mycelium (Original Mix)",
                      "Lane 8 - Fingerprint (Original Mix)",
                      "Mac Vaughn - Pink Is My Favorite Color (Alex Stein Remix)",
                      "Metodi Hristov, Gallya - Badmash (Original Mix)",
                      "Veerus, Maxie Devine - Nightmare (Original Mix)"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)
        
        cell.imageView?.image = UIImage(named: imageNames[indexPath.row])
        cell.textLabel?.text = imageNames[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "Show detail" {
           if let indexPath = self.tableView.indexPathForSelectedRow {
               let detailVC = segue.destination as! DetailVC
               detailVC.trackTile = imageNames[indexPath.row]
           }
        }
    }

}
