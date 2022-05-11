#include<iostream>
#include<stdlib.h>
#include<time.h>
using namespace std; 
//Extra credit part 2: two lines each with a corresponding counter 

float storeClock, orderTime, orderTimeExtraBreakfast, orderTimeExtraLunch, orderTimeExtraDinner, orderTimeSum, waitSum, waitAvg, serviceSum, serviceAvg, queueCount, queueSum, queueAvg, waitBest, serviceBest, queueBest, waitWorst, serviceWorst, queueWorst, waitBestTime, serviceBestTime, queueBestTime, waitWorstTime, serviceWorstTime, queueWorstTime;
bool emptyLine = true, singleLine = false; 

int customerCount = 0; 

class Customer
{
public:
	int order, waitTime, serviceTime; 
	Customer *next;

	Customer()
	{
		order = rand() % 6 + 1; 
		waitTime = serviceTime = 0;
		next = NULL;
	}
};

class Queue 
{
public:
	Customer * head;

	Queue()
	{
		head = NULL;
	}

	void enqueue()
	{
		Customer *temp = new Customer; 
		customerCount++; 

		if (head == NULL) 
			head = temp;
		else
		{
			temp->next = head;
			head = temp;
		} 

	}

	void dequeue()
	{
		Customer *temp, *find;
		temp = find = head;

		if (find == NULL) 
		{
			//Empty line 
			return;
		}
		else if (find->next == NULL) 
		{
			//One customer in line
			delete head;
			head = NULL;
		}
		else 
		{
			//More than one customer in line 
			while (find->next != NULL)
			{
				temp = find;
				find = find->next; 
			}
			temp->next = NULL; 
			delete find; 
		}
	}

	int placeOrder()
	{
		Customer *find = head; 
		if (find == NULL)
			return 0;
		while (find->next != NULL)
		{
			find = find->next;
		}
		return find->order;
	} 

	int queueSize()
	{
		int queueLength = 0;
		Customer *find = head;
		while (find != NULL)
		{
			find = find->next;
			queueLength++;
		}
		return queueLength;
	}

}; 

class QueueExtra  
{
public:
	Customer * head;

	QueueExtra()
	{
		head = NULL;
	}

	void enqueue()
	{
		Customer *temp = new Customer; 
		customerCount++; 

		if (head == NULL) 
			head = temp;
		else
		{
			temp->next = head;
			head = temp;
		} 

	}

	void dequeue()
	{
		Customer *temp, *find;
		temp = find = head;

		if (find == NULL) 
		{
			//Empty line 
			return;
		}
		else if (find->next == NULL) 
		{
			//One customer in line
			delete head;
			head = NULL;
		}
		else 
		{
			//More than one customer in line 
			while (find->next != NULL)
			{
				temp = find;
				find = find->next; 
			}
			temp->next = NULL; 
			delete find; 
		}
	}

	int placeOrder()
	{
		Customer *find = head; 
		if (find == NULL)
			return 0;
		while (find->next != NULL)
		{
			find = find->next;
		}
		return find->order;
	} 

	int queueSize()
	{
		int queueLength = 0;
		Customer *find = head;
		while (find != NULL)
		{
			find = find->next;
			queueLength++;
		}
		return queueLength;
	}

}; 

bool customerArrives() 
	{
		int prob = rand() % 100; 
		if (storeClock < 120) 
		//8:00 to 9:59 [Breakfast]  
		{
			if (prob <= 30)
				return true;
		}
		else if (storeClock < 210) 
		//10:00 to 11:29 
		{
			if (prob <= 10)
				return true;
		}
		else if (storeClock < 330) 
		//11:30 to 1:29 [Lunch] 
		{
			if (prob <= 40)
				return true;
		}
		else if (storeClock < 570) 
		//1:30 to 5:29 
		{
			if (prob <= 10)
				return true;
		}
		else if (storeClock < 720) 
		//5:30 to 7:59 [Dinner] 
		{
			if (prob <= 25)
				return true;
		}
		else if (storeClock < 900) 
		//8:00 to 10:59
		{
			if (prob <= 20)
				return true;
		}
		else if (storeClock < 1020) 
		//11:00 to 1:00
		{
			if (prob <= 10)
				return true;
		}
		return false;
	} 


int main()
{
	srand(time(NULL));
	Queue myStore; //Regular line 
	QueueExtra myStoreExtra; //Extra line for busy hours 
	
		storeClock = orderTime = orderTimeExtraBreakfast = orderTimeExtraLunch = orderTimeExtraDinner = orderTimeSum = waitSum = waitAvg = serviceSum = serviceAvg = queueCount = queueSum = queueAvg = 0; 

		waitBest = serviceBest = queueBest = 99999; 

		waitWorst = serviceWorst = queueWorst = -1; 

		while (storeClock <= 120) 
		//Breakfast 
		{
		if(myStore.queueSize() < myStoreExtra.queueSize()) {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = rand() % 6 + 1;
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
		} 
		else {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStoreExtra.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStoreExtra.enqueue();
				if (myStoreExtra.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTimeExtraBreakfast == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTimeExtraBreakfast = myStoreExtra.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTimeExtraBreakfast; 
					
					cout << "A customer has arrived in the previously empty second line with order time: " << orderTimeExtraBreakfast << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStoreExtra.dequeue(); 
					orderTimeExtraBreakfast = rand() % 6 + 1; 
					orderTimeSum += orderTimeExtraBreakfast; 
					
					cout << "Front customer has left and the following customer in second line now has an order time: " << orderTimeExtraBreakfast << " minutes at " << storeClock/60 << " hours" << endl; 
				}	
			}
		}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 

			} 

			if(orderTimeExtraBreakfast > 0) {
				orderTimeExtraBreakfast--; 
				
				Customer *find;
				find = myStoreExtra.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStoreExtra.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStoreExtra.queueSize()) {
					queueBest = myStoreExtra.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStoreExtra.queueSize()) {
					queueWorst = myStoreExtra.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStoreExtra.queueSize(); 
				queueCount++; 

			}

				
		} 


		while (storeClock <= 210 && storeClock > 120) 
		//Regular 
		{
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = myStore.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

			}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 
		} 

		while (storeClock <= 330 && storeClock > 210) 
		//Lunch 
			{
		if(myStore.queueSize() < myStoreExtra.queueSize()) {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = rand() % 6 + 1;
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
		} 
		else {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStoreExtra.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStoreExtra.enqueue();
				if (myStoreExtra.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTimeExtraLunch == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTimeExtraLunch = myStoreExtra.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTimeExtraLunch; 
					
					cout << "A customer has arrived in the previously empty second line with order time: " << orderTimeExtraLunch << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStoreExtra.dequeue(); 
					orderTimeExtraLunch = rand() % 6 + 1; 
					orderTimeSum += orderTimeExtraLunch; 
					
					cout << "Front customer has left and the following customer in second line now has an order time: " << orderTimeExtraLunch << " minutes at " << storeClock/60 << " hours" << endl; 
				}	
			}
		}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 

			} 

			if(orderTimeExtraLunch > 0) {
				orderTimeExtraLunch--; 
				
				Customer *find;
				find = myStoreExtra.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStoreExtra.head; 
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStoreExtra.queueSize()) {
					queueBest = myStoreExtra.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStoreExtra.queueSize()) {
					queueWorst = myStoreExtra.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStoreExtra.queueSize(); 
				queueCount++; 

			}		
		} 

		while (storeClock <= 570 && storeClock > 330) 
		//Regular 
		{
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = myStore.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

			}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 
		} 

		while (storeClock <= 720 && storeClock > 570) 
		//Dinner 
			{
		if(myStore.queueSize() < myStoreExtra.queueSize()) {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = rand() % 6 + 1;
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
		} 
		else {
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStoreExtra.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStoreExtra.enqueue();
				if (myStoreExtra.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTimeExtraDinner == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTimeExtraDinner = myStoreExtra.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTimeExtraDinner; 
					
					cout << "A customer has arrived in the previously empty second line with order time: " << orderTimeExtraDinner << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStoreExtra.dequeue(); 
					orderTimeExtraDinner = rand() % 6 + 1; 
					orderTimeSum += orderTimeExtraDinner; 
					
					cout << "Front customer has left and the following customer in second line now has an order time: " << orderTimeExtraDinner << " minutes at " << storeClock/60 << " hours" << endl; 
				}	
			}
		}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 

			} 

			if(orderTimeExtraDinner > 0) {
				orderTimeExtraDinner--; 
				
				Customer *find;
				find = myStoreExtra.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStoreExtra.head; 
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

				if(queueBest > myStoreExtra.queueSize()) {
					queueBest = myStoreExtra.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStoreExtra.queueSize()) {
					queueWorst = myStoreExtra.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStoreExtra.queueSize(); 
				queueCount++; 

			}	
		} 

		while (storeClock < 1020 && storeClock > 720) 
		//Regular
		{
			if (customerArrives()) 
			//Check if a customer will join the line
			{
				//Check if line is empty 
				if (myStore.queueSize() == 0) 
					emptyLine = true;
				else
					emptyLine = false;
					myStore.enqueue();
				if (myStore.queueSize() == 1) 
					//If only one person is in line, take their order 
					singleLine = true;
				else
					singleLine = false;
			}

			//If current order is done, customer can leave, or if no customers are in line, make an order 
			if (orderTime == 0) 
			{
				//If one person just joined an empty line and is the only one in line now 
				if (emptyLine && singleLine) 
				{							
					orderTime = myStore.placeOrder();  
					customerCount++; 
					orderTimeSum += orderTime; 
					
					cout << "A customer has arrived in the previously empty line with order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				else
				{ 
					//The previous order is done and the next customer can step up 
					myStore.dequeue(); 
					orderTime = rand() % 6 + 1; 
					orderTimeSum += orderTime; 
					
					cout << "Front customer has left and the following customer in line now has an order time: " << orderTime << " minutes at " << storeClock/60 << " hours" << endl; 
				}
				
			}
			storeClock++;
			if(orderTime > 0) {
				orderTime--; 
				
				Customer *find;
				find = myStore.head; 

				if (find == NULL) 
				{
					//No one in line 
				}
				else if (find->next == NULL) 
				{
					//One customer so no wait time 
					find->serviceTime++; 

					if(serviceBest > find->serviceTime) {serviceBest = find->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < find->serviceTime) {serviceWorst = find->serviceTime; serviceWorstTime = storeClock; } 
				}
				else
				{ 
					//More than one customer 
					Customer *temp; 
					temp = myStore.head;
					temp->serviceTime++; 

					//Adds 1 minute to the wait time and service time of each customer in line
      				while(temp->next != NULL) {
					temp->next->waitTime++;  
					temp->next->serviceTime++; 

					if(serviceBest > temp->next->serviceTime) {serviceBest = temp->next->serviceTime; serviceBestTime = storeClock; } 
					if(serviceWorst < temp->next->serviceTime) {serviceWorst = temp->next->serviceTime; serviceWorstTime = storeClock; } 

					if(waitBest > temp->next->waitTime) {waitBest = temp->next->waitTime; waitBestTime = storeClock; } 
					if(waitWorst < temp->next->waitTime) {waitWorst = temp->next->waitTime; waitWorstTime = storeClock; } 

					temp = temp->next;
      				}
				waitSum += find->next->waitTime; 
				}

			}

				if(queueBest > myStore.queueSize()) {
					queueBest = myStore.queueSize(); 
					queueBestTime = storeClock; 
				} 

				if(queueWorst < myStore.queueSize()) {
					queueWorst = myStore.queueSize(); 
					queueWorstTime = storeClock; 
				}

				queueSum += myStore.queueSize(); 
				queueCount++; 
		} 

		waitAvg = waitSum/customerCount; 
		queueAvg = queueSum/queueCount; 
		serviceAvg = (orderTimeSum + waitSum)/customerCount; 

		cout << "Restaurant now closing" << endl; 
		cout << endl; 
		cout << "================================================" << endl;
  		cout << "|            WELCOME TO BURGER KING            |" << endl;
  		cout << "|            here are today's stats            |" << endl;
  		cout << "================================================" << endl;
  		cout << "Total customer count: [ " << customerCount << " ]" << endl; 
		cout << "Average wait time: [ " << waitAvg << " ] minutes " << endl; 
		cout << "Best wait time: [ " << waitBest << " ] minutes at time: " << waitBestTime << endl; 
		cout << "Worst wait time: [ " << waitWorst << " ] minutes at time: " << waitWorstTime << endl; 
		cout << "Average service time: [ " << serviceAvg << " ] minutes " << endl; 
		cout << "Best service time: [ " << serviceBest << " ] minutes at time: " << serviceBestTime << endl; 
		cout << "Worst service time: [ " << serviceWorst << " ] minutes at time: " << serviceWorstTime << endl; 
		cout << "Average queue size: [ " << queueAvg << " ]" << endl; 
		cout << "Smallest queue length: [ " << queueBest << " ] at time: " << queueBestTime << endl; 
		cout << "Largest queue length: [ " << queueWorst << " ] at time: " << queueWorstTime << endl; 
		cout << "================================================" << endl; 
		cout << endl; 
	}
