#include<iostream>
#include<algorithm>
using namespace std;
void bubblesort(int arr[],int n){
	bool falg=true;
	for(int i=0;i<n-1;i++){
		for(int j=0;j<n-i-1;j++){
			if(arr[j]>arr[j+1]){
				swap(arr[j],arr[j+1]);
				 falg=false;
			}
		}
			if (falg==true)
		break;
	}

}
int main(){
	int arr[]={20,40,30,10,5};
	int n=sizeof(arr)/sizeof(arr[0]);
	bubblesort(arr,n);

	}
	
	
