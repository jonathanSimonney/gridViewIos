import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! MyCellTableViewCell
        cell.textLabel!.text = "Test \(indexPath.row)"
        
        return cell
    }
    

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame)
        tableView.register(MyCellTableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

extension UIView {
    func addSubviewGrid(_ view: UIView, grid: [Int], collNumber: Int, rowNumber: Int){
        let xCol = CGFloat(grid[0])
        let yCol = CGFloat(grid[1])
        let widthCol = CGFloat(grid[2] - grid[0])
        let heightCol = CGFloat(grid[3] - grid[1])
        
        let xColWidth = self.frame.width / CGFloat(collNumber)
        let yColWidth = self.frame.height / CGFloat(rowNumber)
        view.frame = CGRect(x: xCol * xColWidth, y: yCol * yColWidth, width: widthCol * xColWidth, height: heightCol * yColWidth)
        self.addSubview(view)
    }
}
