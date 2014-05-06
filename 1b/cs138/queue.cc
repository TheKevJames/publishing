#include <iostream>
#include <string>
#include <vector>

using namespace std;


struct Node{
	string val;
	Node* next;
};

struct Queue{
	Node* first;
	Node* last;
};

Queue initQ()
{
Queue q;
q.first = NULL;
q.last = NULL;
return q;
}

void printQueue(Node* p){

while(NULL!=p)
{
cout << p->val << endl;
p=p->next;
}
}

Queue leave (Queue q){
Node *p=q.first;
q.first = q.first->next;
if(NULL==q.first){
	q.last= NULL;
}
delete p;
return q;
}

Queue enter(Queue Q, string value){
	Node* newNode = new Node;
	newNode->val = value;
	newNode->next =  NULL;
	if(NULL==Q.first){
		Q.first = newNode;
	}
	else{
		Q.last->next=newNode;
	}
	Q.last=newNode;
	return Q;
}

int main(){

vector<string> words;
Queue Q;
Q = initQ();

words.push_back("hello");
words.push_back("my");
words.push_back("name");
words.push_back("is");
words.push_back("jonah");

//Q.first->val=words.at(0);

for(int i = 0; i<words.size(); i++){
	Q = enter(Q,words.at(i));
}

printQueue(Q.first);
Q = leave(Q);
printQueue(Q.first);
}
