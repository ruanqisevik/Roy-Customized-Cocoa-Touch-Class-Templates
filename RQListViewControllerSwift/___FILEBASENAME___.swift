//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    //MARK: define variable
    lazy var list: UITableView = initList()
    
    //MARK: define constants
    let reuseIdentifier = "reuseIdentifier"
    
    //MARK: initialize and configuration
    
    /*
     override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
     super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
     // Do any additional setup after initialize.
     }
     
     required init?(coder aDecoder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
     }
     */
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.list)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Do any additional setup before view appears.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Do any additional setup after view appears.
    }
    
    /*
     override func viewWillDisappear(_ animated: Bool) {
     super.viewWillAppear(animated)
     
     // Do any additional setup before view disappears.
     }
     
     override func viewDidDisappear(_ animated: Bool) {
     super.viewDidAppear(animated)
     
     // Do any additional setup after view disappears.
     }
     */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: event response
    
    
    //MARK: private methods
    
    
    //MARK: getters and setters
    func initList() -> UITableView {
        let list = UITableView.init(frame: CGRect.init(origin: CGPoint.zero, size: UIScreen.main.bounds.size))
        list.delegate = self
        list.dataSource = self
        
        return list
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        return cell
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section), row: \(indexPath.row) clicked")
    }
}

