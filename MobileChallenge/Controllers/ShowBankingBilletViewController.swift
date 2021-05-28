//
//  ShowBankingBilletViewController.swift
//  MobileChallenge
//
//  Created by Larissa Silva | Gerencianet on 27/05/21.
//

import UIKit

class ShowBankingBilletViewController: BaseViewController {
        
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var lbValue: UILabel!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPaycode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = " "
        self.title = "EMISSAO DE BOLETO"
        
        showData()
    }
    
    func showData(){
        lbDate.text = payment.banking_billet.expire_at
        lbValue.text = "R$ \(totalBankingBillet)"
        lbName.text = payment.banking_billet.customer.name
        lbPaycode.text = barcode
    }
    

    @IBAction func btBack(_ sender: UIButton) {
        if let vc = navigationController?.viewControllers.filter({$0 is BankingBilletViewController}).first as? BankingBilletViewController {
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
}