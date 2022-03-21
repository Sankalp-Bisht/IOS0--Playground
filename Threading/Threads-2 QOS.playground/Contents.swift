import UIKit


struct Example
{
    func doWork() {

        let blockOperation = BlockOperation()

        blockOperation.addExecutionBlock {
            sleep(1)
            print("Block 1")
        }

        blockOperation.addExecutionBlock {
            print("Block 2")
        }

        blockOperation.addExecutionBlock {
            
            print("Block 3")
        }

//        blockOperation.start()
        let anotherBlockOperation = BlockOperation()
        anotherBlockOperation.addExecutionBlock {
            print(" seperate block")
        }

        let operationQueue = OperationQueue()
        operationQueue.qualityOfService = .utility
        //operationQueue.addOperation(blockOperation)
       // operationQueue.addOperation(anotherBlockOperation)
        operationQueue.addOperations([blockOperation, anotherBlockOperation], waitUntilFinished: false)

    }
}

let obj = Example()
obj.doWork()
