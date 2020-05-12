struct Computer: CustomStringConvertible {
    var finish: Finish
    var processor: Processor
    var graphics: Graphics
    
    var price: Int {
        return finish.price + processor.price + graphics.price
    }
    
    var description: String {
        return "\nYour configuration: \n\tFinish: \(finish)\n\tProcessor: \(processor) \n\tGraphics: \(graphics)\n\t$\(price)"
    }
}

func createComputer(factory: ComputerFactory) -> Computer? {
    guard let finish = factory.chooseFinish(),
    let processor = factory.chooseProcessor(),
        let graphics = factory.chooseGraphics() else {
            return nil
    }
    return Computer(finish: finish, processor: processor, graphics: graphics)
}

var factory = ComputerFactory.makeFactory(type: ComputerType.office)

//let officeComputer = Computer(finish: Silver(), processor: Fast(), graphics: Standard())
if let officeComputer = createComputer(factory: factory) {
    print(officeComputer)
}

factory = ComputerFactory.makeFactory(type: ComputerType.highEnd)

//let highEndComputer = Computer(finish: SpaceGray(), processor: Turbo(), graphics: Ultra())
if let highEndComputer = createComputer(factory: factory) {
    print(highEndComputer)
}
