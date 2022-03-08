import UIKit

//var greeting = "Hello, playground"

var grid=[[2,0,4,0],[4,0,2,0],[0,0,8,0],[2,4,4,0]];


func down(){
    var bar = 4;
    for i in 0...3{
        for j in (0...2).reversed(){
            if grid[j][i] != 0{
                if(grid[j+1][i] != 0){
                    let temp = grid[j][i]
                    grid[j][i] = 0;
                    
                    grid[j+1][i] = grid[j+1][i] + temp
                    bar = j+1;
                }
                else{
                    var temp = j;
                    let temp2: Int;
                    while(temp<4 && temp<bar && grid[temp][i] != 0){
                        
                        temp += 1;
                            
                        }
                    temp2 = grid[j][i]
                    grid[j][i] = 0
                    grid[temp][i] += temp2;
                    bar = temp;
                    }
                }
        }
        bar = 4;
    }
    }

func left(){
    
    for i in 0...3{
        for j in 0...3{
            
            if grid[i][j] != 0{
                let temp = grid[i][j]
                grid[i][j] = 0
                grid[i][3] += temp
                
            }
            
        }
    }
}
    
    func right(){
        for i in 0...3{
            for j in 0...3{
                
                if grid[i][j] != 0{
                    let temp = grid[i][j]
                    grid[i][j] = 0
                    grid[i][0] += temp
                    
                }
                
            }
    }
    
}
//Test

for _ in 1...9{

    right()
    
    left()
    down()
}

print(grid)
