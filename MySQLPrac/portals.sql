use portals;

drop table techsites;
drop table academicsites;
drop table foodsites;

CREATE TABLE techsites (
    techsites_id_number INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    URL TEXT NOT NULL,
    description TEXT NOT NULL,
    category TEXT NOT NULL,
    PRIMARY KEY (techsites_id_number)
);

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://www.csail.mit.edu/news/programmers-solve-mits-20-year-old-cryptographic-puzzle",
    "The demonstration of the power of FPGA.",
    "FPGA");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://openconnectivity.org/",
    "World's leading IoT leaders, currently.",
    "IoT");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://www.hostingadvice.com/how-to/update-node-js-latest-version/",
    "Was able to update Nodejs with the above. Why is thing so cumbersome to deal with?",
    "web");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://pragprog.com/book/tpp20/the-pragmatic-programmer-20th-anniversary-edition",
    "20th anniversary edition of the Pragmatic Programmer",
    "general");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("http://g2pc1.bu.edu/~qzpeng/manual/MySQL%20Commands.htm",
    "\"Handy MySQL Commands.\"",
    "database");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://learning.oreilly.com/home/",
    "They've changed their name from Safari to O'Reily Learning.",
    "general");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://news.ycombinator.com/",
    "Who doesn't know this website by now?",
    "general");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://developer.nvidia.com/hpc",
    "To learn CUDA.",
    "HPC");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://aws.amazon.com/hpc/",
    "AWS has their own cloud service for HPC.",
    "HPC");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://www.ethdenver.com/",
    "Currently, the biggest hackathon in Colorado right now.",
    "hackathon");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://github.com/ladyleet/tech-community-slacks",
    "List of Slack channels related to techs.",
    "general");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://dinosaurjs.org/",
    "JS conference in Colorado.",
    "web");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://angulardenver.com/",
    "Angular conference in Colorado.",
    "web");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://callforcode.org/",
    "IBM's global scale programming challenge.",
    "hackathon");

INSERT INTO techsites
    (URL, description, category)
VALUES
    ("https://www.youtube.com/watch?v=1RiFIYwuwHM",
    "Hands on best, practical machine learning book.",
    "Machine Learning");

CREATE TABLE academicsites (
    academic_id_number INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    URL TEXT NOT NULL,
    description TEXT NOT NULL,
    category TEXT NOT NULL,
    PRIMARY KEY (academic_id_number)
);

INSERT INTO academicsites
    (URL, description, category)
VALUES
    ("http://web.mit.edu/alexmv/6.037/",
    "One and only.",
    "functional");

INSERT INTO academicsites
    (URL, description, category)
VALUES
    ("https://cs.mines.edu/graduate-program/",
    "Graduate programs at Mines.",
    "HPC");

INSERT INTO academicsites
    (URL, description, category)
VALUES
    ("https://www.coursera.org/learn/machine-learning",
    "Super Saiyan, Dr. Ng, teaching a machine learning course.",
    "Machine Learning");

CREATE TABLE foodsites (
    food_id_number INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    URL TEXT NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (food_id_number)
);
