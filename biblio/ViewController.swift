//
//  ViewController.swift
//  biblio
//
//  Created by DAMII on 21/09/23.
//
import SideMenu
import UIKit

class ViewController: UIViewController {
    var menu: SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        
        
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }

    @IBAction func didTapMenu(){
        present(menu!, animated: true)
    }
}
class MenuListController: UITableViewController{
    
    var items = ["Libro 1","Libro 2", "Libro 3", "Libro 4","Libro 5","Libro 6"]
                 let darkColor = UIColor(
        red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1
    
    )
    override func viewDidLoad() {
       super.viewDidLoad()
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
    }
    
    
    
    
    override func tableView(_ tableView:UITableView,numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //do something
    }
    
    
    
    
    
    
    
    }
    
    

