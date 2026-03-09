# Servy

Servy is a lightweight and modular web server implementation designed for learning, experimentation, and building small HTTP-based services. The project demonstrates the core concepts behind how web servers handle requests, process routes, and return responses.

It is built with simplicity and clarity in mind, making it suitable for developers who want to understand how backend services work internally.


Servy provides a minimal server architecture that processes HTTP requests and returns structured responses. The project focuses on demonstrating the internal flow of a web server rather than relying on large frameworks.

Key concepts demonstrated in this project include:

HTTP request parsing

Routing and request handling

Response generation

Middleware-like processing

Modular and readable architecture

The goal of Servy is to help developers understand the fundamentals of backend systems and web server design.


## **Features**

Minimal HTTP server implementation

Clear request–response lifecycle

Simple routing system

Modular project structure

Easy to extend for experimentation and learning



## **Getting Started**

Prerequisites

Make sure you have the following installed:

Elixir

Erlang/OTP

Mix

Check versions:

```bash
    elixir -v
```

## **Installation**

```bash
git clone https://github.com/Null-logic-0/servy.git

cd servy
```

Install dependencies:

``` bash 
mix deps.get
```

## **Running the Server**

``` bash
    mix run --no-halt
````


## **Example Request**

```bash
    curl http://localhost:3000
```

## **Example response:**

```bash
HTTP/1.1 200 OK
Content-Type: text/plain

Hello from Servy!
```

## **Learning Goals**

Servy is primarily intended for:

Understanding how HTTP servers work

Learning backend request processing

Exploring functional / Elixir programming in server design

Practicing clean modular architecture