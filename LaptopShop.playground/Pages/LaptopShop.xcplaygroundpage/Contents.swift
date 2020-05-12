// received configuration
let configuration = ["base_model": "budget",
                     "size": "15-inch",
                     "processor": "i5",
                     "graphics": "radeon-pro-vega-20"]

// We implement a function that parses the configuration and sets up a Laptop instance based on the provided values
func buildLaptop(configuration: [String: String]) -> Laptop? {
    guard let model = configuration["base_model"] else {
        return nil
    }
    
    var laptop: Laptop?
    
    switch model {
    case "budget":
        laptop = Laptop(size: Size.thirteenInch, processor: Processor.i5, graphics: Graphics.intelUHD617)
    case "office":
        laptop = Laptop(size: Size.fifteenInch, processor: Processor.i7, graphics: Graphics.intelIrisPlus645)
    case "high-end":
        laptop = Laptop(size: Size.fifteenInch, processor: Processor.i9, graphics: Graphics.radeonProVega20)
    default:
        print("Unexpected value.")
        return nil
    }
    
    guard let selectedLaptop = laptop else {
        return nil
    }
    
    if let customSize = configuration["size"] {
        switch customSize {
        case "13-inch":
            selectedLaptop.size = Size.thirteenInch
        case "15-inch":
            selectedLaptop.size = Size.fifteenInch
        default:
            print("Invalid value")
        }
    }
    
    if let customProcessor = configuration["processor"] {
        switch customProcessor {
        case "i5":
            selectedLaptop.processor = Processor.i5
        case "i7":
            selectedLaptop.processor = Processor.i7
        case "i9":
            selectedLaptop.processor = Processor.i9
        default:
            print("Invalid value")
        }
    }
    
    if let customGraphics = configuration["graphics"] {
        switch customGraphics {
        case "intel-uhd-graphics-617":
            selectedLaptop.graphics = Graphics.intelUHD617
        case "intel-iris-plus-graphics-645":
            selectedLaptop.graphics = Graphics.intelIrisPlus645
        case "radeon-pro-vega-20":
            selectedLaptop.graphics = Graphics.radeonProVega20
        default:
            print("Invalid value")
        }
    }
    return selectedLaptop
}

// Create a budget laptop
if let laptop = buildLaptop(configuration: ["base_model": "budget"]) {
    print(laptop)
}

// A smaller office laptop
if let laptop = buildLaptop(configuration: ["base_model": "office",
                                            "size": "13-inch"]
) {
    print(laptop)
}

// High-End with downgraded size and graphics
if let laptop = buildLaptop(configuration: ["base_model": "high-end",
                                            "size": "13-inch",
                                            "graphics": "intel-iris-plus-graphics-645"]) {
    print(laptop)
}


// We delegate a lot of responsibilities to the client.
// Besides parsing, callers needs to know about all the possible configuration values. Here's where the Builder can help. We're going to refactor our solution next.
