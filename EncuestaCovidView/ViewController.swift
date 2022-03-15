import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vwHeader: UIView!
    
    @IBOutlet weak var scTipoUsuario: UISegmentedControl!
    
    @IBOutlet weak var txtNumeroDe: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblNumeroDe: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblWNumeroDe: UILabel!
    @IBOutlet weak var lblWNombre: UILabel!
    @IBOutlet weak var lblWEmail: UILabel!
    
    @IBOutlet weak var scContactoCovid: UISegmentedControl!
    
    @IBOutlet weak var swt1: UISwitch!
    @IBOutlet weak var swt2: UISwitch!
    @IBOutlet weak var swt3: UISwitch!
    @IBOutlet weak var swt4: UISwitch!
    @IBOutlet weak var swt5: UISwitch!
    @IBOutlet weak var swt6: UISwitch!
    @IBOutlet weak var swt7: UISwitch!
    @IBOutlet weak var lblWSwitch: UILabel!
    
    @IBOutlet weak var btnEnviar: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gradiente = CAGradientLayer()
        gradiente.frame = vwHeader.bounds
        gradiente.colors =
        [UIColor(red: 0, green:30/255, blue:98/255, alpha: 1).cgColor, UIColor(red: 200/255, green: 16/255, blue: 46/255, alpha: 1).cgColor]
        gradiente.startPoint = CGPoint(x: 0, y:0.5)
        gradiente.endPoint = CGPoint(x:1, y:0.5)
        gradiente.shouldRasterize = true
        
        vwHeader.layer.addSublayer(gradiente)
        vwHeader.layer.cornerRadius = 30
        
        let gradiente2 = CAGradientLayer()
        gradiente2.frame = btnEnviar.bounds
        gradiente2.colors =
        [UIColor(red: 0, green:30/255, blue:98/255, alpha: 1).cgColor, UIColor(red: 200/255, green: 16/255, blue: 46/255, alpha: 1).cgColor]
        gradiente2.startPoint = CGPoint(x: 0, y:0.5)
        gradiente2.endPoint = CGPoint(x:1, y:0.5)
        gradiente2.shouldRasterize = true
        
        btnEnviar.layer.addSublayer(gradiente2)
        btnEnviar.layer.cornerRadius = 30
        
        lblWNumeroDe.isHidden = true
        lblWNombre.isHidden = true
        lblWEmail.isHidden = true
        
    }

    @IBAction func doChangeSintomas(_ sender: Any) {
        if(swt7.isOn == true){
            swt1.isOn = false
            swt2.isOn = false
            swt3.isOn = false
            swt4.isOn = false
            swt5.isOn = false
            swt6.isOn = false
        }
        
        if(swt1.isOn == true){
            swt7.isOn = false
        }
        if(swt2.isOn == true){
            swt7.isOn = false
        }
        if(swt3.isOn == true){
            swt7.isOn = false
        }
        if(swt4.isOn == true){
            swt7.isOn = false
        }
        if(swt5.isOn == true){
            swt7.isOn = false
        }
        if(swt6.isOn == true){
            swt7.isOn = false
        }
        
    }
    @IBAction func doChangeTipoUsuario(_ sender: Any) {
        if(scTipoUsuario.selectedSegmentIndex == 0){
            lblNumeroDe.text = "Matricula"
            txtNumeroDe.placeholder = "Ingrese su Matricula"
        }
        if(scTipoUsuario.selectedSegmentIndex == 1){
            lblNumeroDe.text = "Numero de profesor"
            txtNumeroDe.placeholder = "Ingresa el numero de profesor"
        }
        if(scTipoUsuario.selectedSegmentIndex == 2){
            lblNumeroDe.text = "Numero de empleado"
            txtNumeroDe.placeholder = "Ingresa el numero de empleado"
        }
    }
    
    @IBAction func DoTapEnviarEncuesta(_ sender: Any) {
        if(lblNumeroDe.text == nil){
            lblWNumeroDe.isHidden = false
        }
        else if(lblNombre.text == nil){
            lblWNombre.isHidden = false
        }
        else if(lblEmail.text == nil){
            lblWEmail.isHidden = false
        }
    }
}

