#include<iostream>
#include<algorithm> 
using namespace std;
void select(int arr[],int n){
	int min;
	for(int i=0;i<n;i++){
	min=i;
	
	for(int j=0;j<n;j++){
		if (arr[j]<arr[min]){
		min=arr[j];
		swap(arr[min],arr[i]);
		}
	}
}
}
int main(){
	int arr[]={1,2,3,67,89};
	int n=sizeof(arr)/sizeof(arr[0]);
	select(arr,n);
	
}


