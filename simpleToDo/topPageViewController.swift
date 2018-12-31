import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var todoList: UITableView!
    @IBOutlet weak var change0: UIButton!
    @IBOutlet weak var change1: UIButton!
    @IBOutlet weak var change2: UIButton!
    @IBOutlet var topView: UIView!
    
    
    var todos : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoList.delegate = self
        todoList.dataSource = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toDoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "todocell", for: indexPath)
        
        toDoCell.textLabel?.text = todos[indexPath.row]
        
        
        return toDoCell
    }
    
    @IBAction func change0(_ sender: UIButton) {
        
        topView.backgroundColor = UIColor(red: 116/255, green: 185/255, blue: 255/255, alpha: 1.0)
        todoList.backgroundColor = UIColor(red: 129/255, green: 236/255, blue: 236/255,alpha: 1.0)
        
        
    }
    
    
    
}
