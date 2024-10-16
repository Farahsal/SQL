CREATE database library_management_system;
use library_management_system;
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    GenreID INT,
    ISBN VARCHAR(20),
    PublicationYear INT,
    AvailableCopies INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(255)
);

CREATE TABLE Genres (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(50)
);
CREATE TABLE Borrowers (
    BorrowerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20)
);
CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);
