import Foundation

class Node<T: Comparable>: CustomStringConvertible {
  var key: T?
  var left: Node<T>?
  var right: Node<T>?
  
  var description: String {
    var desc = ""
    if let key = key {
      desc += "\(key)"
    }
    
    if let left = left {
      desc += ", left = [ \(left.description) ]"
    }
    
    if let right = right {
      desc += ", right = [ \(right.description) ]"
    }
    
    return desc
  }
}

class BST<T: Comparable> {
  var root: Node = Node<T>()
  
  func append(element key: T) {
    guard root.key != nil else {
      root.key = key
      return
    }
    
    var current: Node =  root
    
    while current.key != nil {
      if key < current.key! {
        guard let left = current.left else {
          let child = Node<T>()
          child.key = key
          current.left = child
          return
        }
        
        current = left
      } else {
        guard let right = current.right else {
           let child = Node<T>()
           child.key = key
           current.right = child
           return
         }
         
         current = right
      }
    }
  }
}

extension BST: CustomStringConvertible {
  var description: String {
    
    var desc = "Tree: "
    
                                                                                                                                                                                                                                                      
    if let left = root.left {
      desc += ", left = [ \(left.description) ]"
    }
    
    if let right = root.right {
      desc += ", right = [ \(right.description) ]"
    }
    
    return desc
  }
}


let numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7]
//create a new BST instance
var bstree = BST<Int>()
//sort each item in the list
for number in numberList {
  bstree.append(element: number)
}


bstree.description

