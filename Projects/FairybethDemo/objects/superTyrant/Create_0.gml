randomize()
global.listRoom=["Apple","Ball","Baloon","Bear","Boots","Bucket","Car","Crayons","Cube","Dice","Dinosaur","Duck","Elephant","Glasses","Guitar","Hat","Plane","Puzzle","Rabbit","Rocket","Scissors","Socks","Spinning Top","Strawberry","Umbrella","Windmill"];
global.askedUser=true
global.foundItems=[]
global.listEmpty=false
global.chosen_index = irandom(array_length(global.listRoom)-1)
global.searchedWord= global.listRoom[global.chosen_index]
global.searchedLetter=string_copy(global.searchedWord,1,1)
global.bubbleText="The first letter of the item you are searching for is: "
global.falseAnswer=false
global.isGameFinished=true
global.flipped=false
global.letterInSpeech=global.searchedLetter
global.showDictionary = false;
global.dictPage=0;