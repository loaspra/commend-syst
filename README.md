# Movie Recommendation System

In this project I combine several Deep Learning techniques to create a model that recommends moves to several users.

## Objectives:

The model's predictions represent the possible ratings of unwatched movies at a time by a user. The goal is to show a ranking of the movies with the highest ratings (predictions made by the model).

Also, the model should maintain a great performance overtime. In other words, **concept drift** should be diminished.

Finally, the model should complicated enough to achieve great performance and good accurracy.

## The Data

The datasets used in this project are the [Movielens datasets](https://grouplens.org/datasets/movielens/latest/).

The data of interest is in two datasets:
+ _movies.csv_: Describes the movies recollected, its genres, Date of release (in timestamp form), Title of the movie and a unique ID that identifies the movie (like a primary key on a Relational database table).
+ _ratings.csv_: Contains The relationship between users and movies. The 'userId' is the unique identifier to each user. Each row represents a user's rating and the timestamp.

{insert ss of csv files}

The label (variable to predicted) is the rating of some movie. And the inputs are the past ratings of the user, the ratings of others users and the attributes of each movie (genres, date, number of views, etc.)

## The Models 

First of all, a baseline model is defined as the floor, or minimun acceptable, performance.
This model is designed as follows:

### Baseline model
The baseline model uses the Collaborative Filtering concept:
    If two users have similar ratings on some movies, one movie that one user already watched and rated it high is a good recommendation to the other user, if they didn't watched it already

The most activity a user has on our platform, the better the model's predictions should be.

Going a bit lower, the layers of the model are shown in the following image.

**Insert model diagram**
Both userIds and movieIds are fed into the model. 

---
## Model's input: Data Pipelines
++ Explain the preprocessing applied to the data

### Model's Features
++ Explain Feature engineering ♥

## 

The training was carried out with the small MovieLens dataset. 
**insert link**




The following steps describe how to clone this project and its dependencies. As I use Windows, the easiest way to run pip scripts from bash (cmd) is through Anaconda, for this reason I use conda to build the enviroment and its packages.

---
## Set up the environment (on Windows)
1. Install [Anaconda](https://repo.anaconda.com/archive/Anaconda3-2022.05-Windows-x86_64.exe)
2. Set up the environment:
```bash
make install
make activate
```

## Run the entire pipeline
To run the entire pipeline, type:
```bash
conda run dvc repo
```

# Auto-generate API documentation

To auto-generate API document for your project, run:

```bash
make docs
```
