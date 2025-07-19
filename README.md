# Clean Architecture (Data Layer, Domain Layer Exam)

Included in this repository is the pre-requisite <a href="[http://jsonplaceholder.typicode.com/](https://github.com/JCPradelPH/bootcamp-exam/blob/main/base_usecase.dart)" target="_blank">JSONPlaceholder service(http://jsonplaceholder.typicode.com/)</a>.

## Instructions
1. Use of frameworks such as React, Vue, Angular, etc. is not allowed. (Part 2)
2. Use of other libraries is not allowed. (Part 1 and 2)
3. You are only allowed to code in Javascript es5/es6. (Part 1 and 2)
4. Html and styling with css is required and must be responsive. (Part 2)

## Part 1 - Javascript Coding Challenge
Kindly put your code on the provided .js file inside the part 1 folder.

1. Create a function that can breakdown the bills in a given amount
```
	Example:
		input: 2653
		output: {
			"1000": 2,
			"500": 1,
			"100": 1,
			"50" : 1
		}
 ```
2. Given the object:
```javascript
let categories = [
	{ id:'animals', parent: null },
	{ id:'mammals', parent: 'animals' },
	{ id:'cats', parent: 'mammals' },
	{ id:'dogs', parent: 'mammals' },
	{ id:'chihuahua', parent: 'dogs' },
	{ id:'labrador', parent: 'dogs' },
	{ id:'persian', parent: 'cats' },
	{ id:'siamese', parent: 'cats' }
]
```
Create a function that mutates the object to output:
```json
{
    "animals": {
        "mammals": {
            "cats": {
                "persian": {},
                "siamese": {}
            },
            "dogs": {
                "chihuahua": {},
                "labrador": {}
            }
        }
    }
}
```
3. Using the <a href="http://jsonplaceholder.typicode.com/" target="_blank">JSONPlaceholder service(http://jsonplaceholder.typicode.com/)</a>, create a function that makes 
	 http requests from <a href="http://jsonplaceholder.typicode.com/users" target="_blank">http://jsonplaceholder.typicode.com/users</a> and <a href="http://jsonplaceholder.typicode.com/posts" target="_blank">http://jsonplaceholder.typicode.com/posts</a> 
	 and then create the following json object format from the results:
```
"userPosts": [
    {
        "name": "Leanne Graham",
        "username": "Bret",
        "email": "Sincere@april.biz",
        "posts": [
            {
                "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
                "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
            },
            {
                "title": "qui est esse",
                "body": "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla"
            },
            ...and so on
        ]
    },
    {
        "name": "Ervin Howell",
        "username": "Antonette",
        "email": "Shanna@melissa.tv",
        "posts": [
            {
                "title": "in quibusdam tempore odit est dolorem",
                "body": "itaque id aut magnam\npraesentium quia et ea odit et ea voluptas et\nsapiente quia nihil amet occaecati quia id voluptatem\nincidunt ea est distinctio odio"
            },
            {
                "title": "dolorum ut in voluptas mollitia et saepe quo animi",
                "body": "aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam"
            },
            ...and so on
        ]
    },
    ...and so on
]
```
## Part 2 - Responsive Layout Menu
Using the provided HTML file inside the part 2 folder, kindly create a mobile web prototype that will list ALL the items separated by category from the given JSON object. 

```javascript
const menuData = {
    "menus": {
        "m001": {
            "parent": "m000",
            "title": "Breakfast Menu"
        },
        "m002": {
            "parent": "m000",
            "title": "Lunch Menu"
        },
        "m003": {
            "parent": "m000",
            "title": "Dinner Menu"
        },
        "m004": {
            "parent": "m100",
            "title": "Specials"
        },
        "d001": {
            "parent": "m001",
            "prepTimeMin": 5,
            "title": "Pancakes",
            "price": 110,
        },
        "d002": {
            "parent": "m002",
            "prepTimeMin": 10,
            "title": "Red Snapper",
            "price": 825,
        },
        "d003": {
            "parent": "m002",
            "prepTimeMin": 12,
            "title": "Lobster",
            "price": 1200,
        },
        "d004": {
            "parent": "m001",
            "prepTimeMin": 10,
            "title": "Apple Pie",
            "price": 125,
        },
        "d005": {
            "parent": "m003",
            "prepTimeMin": 10,
            "title": "Grouper Fillet",
            "price": 650,
        },
        "d006": {
            "parent": "m003",
            "prepTimeMin": 12,
            "title": "Cowboy Chicken",
            "price": 530,
        },
        "d007": {
            "parent": "m004",
            "prepTimeMin": 10,
            "title": "Wagyu Steak",
            "price": 1200,
        }
    }
};
```

Feel free to style your work the way you wanted but you must follow the format from the given image below for displaying the items.

![](https://firebasestorage.googleapis.com/v0/b/buzfy-e233d.appspot.com/o/applicant-exam-res%2FScreen%20Shot%202018-12-18%20at%209.25.38%20PM.png?alt=media&token=c3c5404a-1293-461e-a5a8-d8ac98968f02)

Good Luck!
