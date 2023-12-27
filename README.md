# User API Spec

## Insert data business

Endpoint : POST /business

Request Header :

- api-key : 59d9ae4cb202f3bec60a977c6dd704862c221f82

Request Body :


```json
{
  "alias": "gramercy-tavern-new-york",
  "name": "Gramercy Tavern",
  "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg",
  "is_closed": false,
  "url": "https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug",
  "review_count": 3425,
  "rating": 4.5,
  "price": "$$$$",
  "phone": "+12124770777",
  "display_phone": "(212) 477-0777",
  "distance": 3695.6399277648
}
```

Response Body (Success) :

```json
{
  "id": 12,
  "alias": "gramercy-tavern-new-york",
  "name": "Gramercy Tavern",
  "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg",
  "url": "https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug",
  "review_count": 3425,
  "categories": [],
  "rating": 4.5,
  "coordinates": [],
  "transactions": null,
  "price": "$$$$",
  "location": null,
  "phone": "+12124770777",
  "display_phone": "(212) 477-0777",
  "distance": 3695.6399277648,
  "is_closed": true
}
```

Response Body (Failed 400) :

```json
{
  "timestamp": "2023-12-26T14:01:17.708+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public entity.com.enamdua.backend.satryadh.Business controller.com.enamdua.backend.satryadh.BusinessController.saveBusiness(entity.com.enamdua.backend.satryadh.Business)",
  "path": "/business/"
}
```

## Get data business

Endpoint : GET /business/search

Request Header :

- api-key : Token (Mandatory)

Request Params :
- term
- size
- page
- distance
- sort_by [rating,distanc,review_count]

Response Body (Success) :

```json
{
  "businesses": [
    {
      "id": 10,
      "alias": "gramercy-tavern-new-york",
      "name": "Gramercy Taverns",
      "image_url": "https://s3-media2.fl.yelpcdn.com/bphoto/l2oSnhyvJfWT6bufumBMzw/o.jpg",
      "url": "https://www.yelp.com/biz/gramercy-tavern-new-york?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug",
      "review_count": 3425,
      "categories": [
        {
          "alias": "newamerican",
          "title": "New American"
        }
      ],
      "rating": 4.5,
      "coordinates": [
        {
          "latitude": 40.73844,
          "longitude": -73.98825
        }
      ],
      "transactions": [
        "pickup"
      ],
      "price": "$$$$",
      "location": [
        {
          "address1": "42 E 20th St",
          "address2": "",
          "address3": "",
          "city": "New York",
          "zip_code": "10003",
          "country": "US",
          "state": "NY"
        }
      ],
      "phone": "(212) 477-0777",
      "display_phone": "(212) 477-0777",
      "distance": 3695.6399277648,
      "is_closed": false
    }
  ],
  "total": 3
}
```

Response Body (Failed 400) :

```json
{
  "code": "VALIDATION_ERROR",
  "description": "Authorization is a required parameter."
}
```

## Insert data Categories

Endpoint : POST /business/{business_id}/categories

Request Header :

- api-key : Token (Mandatory)

Request Body :

```json
{
  "alias": "newamerican",
  "title": "New American"
}
```

Response Body (Success) :

```json
{
  "id": 5,
  "business_id": 12,
  "alias": "newamerican",
  "title": "New American"
}
```

Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T14:04:47.994+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public model.com.enamdua.backend.satryadh.CreateCategoriesRequest controller.com.enamdua.backend.satryadh.CategoriesController.saveCategories(int,model.com.enamdua.backend.satryadh.CreateCategoriesRequest)",
  "path": "/business/12/categories"
}
```

## Insert data Coordinates

Endpoint : POST /business/{business_id}/coordinates

Request Header :

- api-key : Token (Mandatory)

Request Body :

```json
{
  "latitude": 40.73844,
  "longitude": -73.98825
}
```

Request Body : (Success) :

```json
{
  "id": 5,
  "business_id": 12,
  "latitude": 40.73844,
  "longitude": -73.98825
}
```

Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T14:09:36.988+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public model.com.enamdua.backend.satryadh.CreateCoordinatesRequest controller.com.enamdua.backend.satryadh.CoordinatesController.saveLocation(int,model.com.enamdua.backend.satryadh.CreateCoordinatesRequest)",
  "path": "/business/12/coordinates"
}
```

## Insert data Location

Endpoint : POST /business/{business_id}/location

Request Header :

- api-key : Token (Mandatory)

Request Body :

```json
{
  "address1": "42 E 20th St",
  "address2": "",
  "address3": "",
  "city": "New York",
  "zip_code": "10003",
  "country": "US",
  "state": "NY"
}
```

Response Body (Success) :

```json
{
  "id": 8,
  "business_id": 12,
  "address1": "42 E 20th St",
  "address2": "",
  "address3": "",
  "city": "New York",
  "zip_code": "10003",
  "country": "US",
  "state": "NY",
  "cross_streets": null
}
```

Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T14:12:11.852+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public model.com.enamdua.backend.satryadh.CreateLocationRequest controller.com.enamdua.backend.satryadh.LocationController.saveLocation(int,model.com.enamdua.backend.satryadh.CreateLocationRequest)",
  "path": "/business/12/location"
}
```

## Insert data Photos

Endpoint : POST /business/{business_id}/photos

Request Header :

- api-key : Token (Mandatory)

Request Body :
```json
{
  "photos": "https://s3-media1.fl.yelpcdn.com/bphoto/o7Lmy_fX07ZWhEn_m5R2CQ/o.jpg"
}
```
Response Body (Success) :

```json
{
  "id": 8,
  "business_id": 12,
  "photos": "https://s3-media1.fl.yelpcdn.com/bphoto/o7Lmy_fX07ZWhEn_m5R2CQ/o.jpg"
}
```
Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T14:14:10.324+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public model.com.enamdua.backend.satryadh.CreatePhotosRequest controller.com.enamdua.backend.satryadh.PhotosController.savePhotos(int,model.com.enamdua.backend.satryadh.CreatePhotosRequest)",
  "path": "/business/12/photos"
}
```
## Insert data Transactions

Endpoint : POST /business/{business_id}/transactions

Request Header :

- api-key : Token (Mandatory)

Request Body :
```json
{
  "transaction": "pickup"
}
```
Response Body (Success) :

```json
{
  "id": 5,
  "business_id": 12,
  "transaction": "pickup"
}
```
Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T14:16:13.427+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public model.com.enamdua.backend.satryadh.CreateTransactionsRequest controller.com.enamdua.backend.satryadh.TransactionsController.saveTransactions(int,model.com.enamdua.backend.satryadh.CreateTransactionsRequest)",
  "path": "/business/12/transactions"
}
```
## Insert data Reviews

Endpoint : POST /business/{business_id}/reviews

Request Header :

- api-key : Token (Mandatory)

Request Body :
```json
{
  "url": "https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug",
  "text": "A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.",
  "rating": 5,
  "time_created": "2023-10-30 23:21:55",
  "user_id": "qziedid5UCRy4WUeKUc_jg",
  "profile_url": "https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg",
  "image_url": "https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg",
  "name": "Cindy G."
}
```
Response Body (Success) :

```json
{
  "id": 5,
  "business_id": 4,
  "url": "https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug",
  "text": "A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.",
  "rating": "5",
  "time_created": "2023-10-30 23:21:55",
  "user_id": "qziedid5UCRy4WUeKUc_jg",
  "profile_url": "https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg",
  "image_url": "https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg",
  "name": "Cindy G."
}
```
Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T19:10:02.940+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public com.enamdua.backend.satryadh.model.CreateReviewsRequest com.enamdua.backend.satryadh.controller.ReviewsController.saveReviews(int,com.enamdua.backend.satryadh.model.CreateReviewsRequest)",
  "path": "/business/4/reviews"
}
```
## Get data Reviews

Endpoint : Get /business/{business_id}/reviews

Request Header :

- api-key : Token (Mandatory)


Response Body (Success) :

```json
{
  "reviews": [
    {
      "id": 1,
      "business_id": 4,
      "url": "https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug",
      "text": "A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.",
      "rating": "5",
      "time_created": "2023-10-30 23:21:55",
      "user_id": "qziedid5UCRy4WUeKUc_jg",
      "profile_url": "https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg",
      "image_url": "https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg",
      "name": "Cindy G."
    },
    {
      "id": 2,
      "business_id": 4,
      "url": "https://www.yelp.com/biz/jessies-nutty-cups-new-york-4?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&hrid=d3ulSqLFFDy9n5cB6cnqoQ&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=DSj6I8qbyHf-Zm2fGExuug",
      "text": "A coworker had brought these to our clinic in San Francisco & they were amazing!! I found them on instagram & it appears they have closed their business.",
      "rating": "5",
      "time_created": "2023-10-30 23:21:55",
      "user_id": "qziedid5UCRy4WUeKUc_jg",
      "profile_url": "https://www.yelp.com/user_details?userid=qziedid5UCRy4WUeKUc_jg",
      "image_url": "https://s3-media2.fl.yelpcdn.com/photo/pb9v5YZo4iOzki5KjxhvlA/o.jpg",
      "name": "Cindy G."
    }
  ],
  "total": 5
}
```
Response Body (Failed, 400) :

```json
{
  "timestamp": "2023-12-26T19:10:02.940+0000",
  "status": 400,
  "error": "Bad Request",
  "message": "Required request body is missing: public com.enamdua.backend.satryadh.model.CreateReviewsRequest com.enamdua.backend.satryadh.controller.ReviewsController.saveReviews(int,com.enamdua.backend.satryadh.model.CreateReviewsRequest)",
  "path": "/business/4/reviews"
}
```
