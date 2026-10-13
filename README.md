# Week 8: Dart Logic Problem Set

**Student Name:** Jazy Anne Natan  
**Course & Section:** NTC_PC16 – Mobile Development w/ Lab  

## Overview
This project expands upon the store purchase scenario by implementing core Dart logic constructs[span_1](start_span)[span_1](end_span). It demonstrates decision-making using conditionals, iterative processing using loops, modular code structure using functions, and exception handling using `try/catch` blocks[span_2](start_span)[span_2](end_span).

## Key Features & Logic Implemented
- **Function with Parameters & Return Value:** `calculateTotalWithItems()` accepts item quantities, unit pricing, and membership status to process orders and return the final total[span_3](start_span)[span_3](end_span).
- **Loop:** Uses a `for` loop to step through each item purchased, building a running subtotal[span_4](start_span)[span_4](end_span).
- **Conditional Logic:** Evaluates membership status and subtotal tiers using `if / else if / else` statements to apply appropriate discounts[span_5](start_span)[span_5](end_span).
- **Error Handling (try/catch):** Invokes `checkStockAvailability()` with invalid input (ordering more items than available in stock) to trigger an exception and catch it gracefully without crashing[span_6](start_span)[span_6](end_span).

## How to Run
1. Open your terminal in the project directory.
2. Run the program using:
   ```bash
   dart run
