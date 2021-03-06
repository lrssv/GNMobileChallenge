import UIKit

class FailRequestViewController: BaseViewController {

    @IBOutlet weak var btBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //View style configuration
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.title = "EMISSAO DE BOLETO"
        
        buttonStyleFormatter(inThis: btBack)
     
    }
    
    //Backs to Banking Billet View Controller
    @IBAction func btBack(_ sender: UIButton) {
        if let vc = navigationController?.viewControllers.filter({$0 is BankingBilletViewController}).first as? BankingBilletViewController {
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }

}



