import UIKit

class ViewController: UITableViewController {
    
    var signos:[String] = []
    var significadosSignos:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //insercao de signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        //insercao do significado
        significadosSignos.append("Áries representa pessoas enérgicas e confiantes.")
        significadosSignos.append("Touro representa pessoas práticas e determinadas.")
        significadosSignos.append("Gêmeos representa pessoas comunicativas e curiosas.")
        significadosSignos.append("Câncer representa pessoas sensíveis e protetoras.")
        significadosSignos.append("Leão representa pessoas carismáticas e ambiciosas.")
        significadosSignos.append("Virgem representa pessoas detalhistas e metódicas.")
        significadosSignos.append("Libra representa pessoas equilibradas e sociáveis.")
        significadosSignos.append("Escorpião representa pessoas intensas e determinadas.")
        significadosSignos.append("Sagitário representa pessoas aventureiras e otimistas.")
        significadosSignos.append("Capricórnio representa pessoas disciplinadas e ambiciosas.")
        significadosSignos.append("Aquário representa pessoas independentes e criativas.")
        significadosSignos.append("Peixes representa pessoas intuitivas e empáticas.")

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaDeReuso = "celulaDeReuso"
        let cell = tableView.dequeueReusableCell(withIdentifier: celulaDeReuso, for: indexPath)
        
        cell.textLabel?.text = signos[indexPath.row]
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
