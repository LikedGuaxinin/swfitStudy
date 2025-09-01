var lista : [String] = []
var loop = true
func addTarefa(lista : [String], tarefa:String) -> [String] {
    var listaInterna = lista
    listaInterna.append(tarefa)
    return listaInterna
}
func delTarefa(lista : [String] , indice : Int) -> [String]{
    var listaInterna = lista
    listaInterna.remove(at:indice)
    return listaInterna
}
func altTarefa(lista : [String] , indice : Int , tarefa : String) -> [String]{
    var listaInterna = lista
    listaInterna[indice] = tarefa
    return listaInterna
}
while loop{
    print(String(repeating: "-", count: 20))
    print("""
    [1] ADICIONAR TAREFA
    [2] DELETAR TAREFA
    [3] SAIR 
    [4] MOSTRAR LISTA
    [5] ALTERAR TAREFA
    """)
    print(String(repeating: "-", count: 20))
    let resposta = readLine()
    if let resp = Int(resposta!){
        switch resp {
        case 1:
        print("Que tarefa voce deseja adicionar ")
        let respTarefa = readLine()
        if let respTarefa = respTarefa{
            lista = addTarefa(lista : lista , tarefa : respTarefa)
            print("Tarefa adicionada")
            print()
        }
        case 2:
        print()
        print("Tarefas atuais : ")
        for(index , tarefa) in lista.enumerated(){
            print("[\(index)] \(tarefa)")
        }
        print("Digite o indice da tarefa que voce deseja deletar ")
        let resposta2 = readLine()
        if let resposta2 = resposta2{
            if let indice = Int(resposta2){
                if indice >= 0 && indice <= lista.count{
                lista = delTarefa(lista : lista , indice : indice)
                print("Tarefa deletada")
                }else{
                    print("Indice invalido")
                }
            }else{
                print("Indice invalido ")
            }
        }else{
            print("erro")
        }
        case 3:
        loop = false
        print("Codigo encerrado")
        print("Sua lista é \(lista)")
        case 4:
        print(lista)
            
        case 5:
        print()
        print("Suas tarefas atuais :")
         for(index , tarefa) in lista.enumerated(){
            print("[\(index)] \(tarefa)")
         }
         print("Digite  o indice da tarefa que voce deseja alterar")
         let resposta3  = readLine()
         if let resposta3 = resposta3{
            if let indice2 = Int(resposta3){
                if indice2 >= 0 && indice2 < lista.count{
                print("Digite a nova tarefa ")
                let resposta4 = readLine()
                if let resposta4 = resposta4{
                    lista = altTarefa(lista : lista , indice : indice2 , tarefa : resposta4)
                    print("Tarefa alterada")
                }else{
                    print("Indice invalido ")
                }
                }else{
                    print("Invalido")
                }

            }else{
                print(" Invalido ")
            }

         }else{
            print("ERRO")
         }


        default:
        print("Opçao invalido")
        loop = false
            
        }
            
        
    }
}
print("Codigo finalizado")
