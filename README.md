# Clean Architecture Bootcamp Activity

Included in this repository is the pre-requisite <a href="[http://jsonplaceholder.typicode.com/](https://github.com/JCPradelPH/bootcamp-exam/blob/main/base_usecase.dart)" target="_blank">base_usecase.dart</a> file for creating UseCases.

## Instructions
1. Fetch the list of users from <a href="http://jsonplaceholder.typicode.com/users" target="_blank">http://jsonplaceholder.typicode.com/users</a>.
2. Fetch the list of posts from <a href="http://jsonplaceholder.typicode.com/users" target="_blank">http://jsonplaceholder.typicode.com/posts</a>.
3. According to the responses from the users and posts endpoints, the presentation layer should retrieve a list of entities in the following structure. Ensure that all posts are mapped to their respective users.
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
4. The UI should only have one button with an event that when tapped, it will log the mapped userPosts in the console. No additional UI and State Management needed.

## Rules
1. Create a new repository with a new Flutter project for this activity.
2. The folder structure of your project should strictly follow the clean architecture pattern.
3. Mapping and API requests should be handled within the Data and Domain layers.
4. The Presentation Layer should only be used in calling UseCases.
5. Your UI should be placed inside the Presentation Layer.

Once done, you can send the link to your repositories to pradeljc@gmail.com and paulo.espiel@gmail.com

Good Luck!
