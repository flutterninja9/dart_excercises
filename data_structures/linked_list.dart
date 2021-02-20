class Node<T> {
  T data;
  Node next;

  Node({this.data, this.next = null});
}

class LinkedList<T> {
  Node _head = null;

  // Insertion at beggining
  void insertAtStart({T data}) {
    Node node = Node(data: data);
    // If the LinkedList is empty initially
    if (this._head == null) {
      this._head = node;
      this._head.next = null;
    } else {
      node.next = this._head;
      this._head = node;
    }
  }

  // Getting the elements stored
  void getElements() {
    // If the linkedlist is empty
    if (this._head == null) {
      return null;
    } else {
      Node tempNode = this._head;
      while (tempNode != null) {
        print(tempNode.data);
        tempNode = tempNode.next;
      }
    }
  }
}

// Driver Code
void main() {
  final LinkedList<String> linkedList = LinkedList();
  linkedList.insertAtStart(data: 'Anirudh');
  linkedList.insertAtStart(data: 'Deepak');
  linkedList.insertAtStart(data: 'Patel');
  linkedList.insertAtStart(data: 'Aadarsh');
  linkedList.getElements();
}
