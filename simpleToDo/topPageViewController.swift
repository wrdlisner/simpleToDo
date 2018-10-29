import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var todoList: UITableView!
    
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
    
    @IBAction func addTodo(_ sender: UIBarButtonItem) {
        
        
    }
    
}
