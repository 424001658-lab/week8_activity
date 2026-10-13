void main() {
  String studentName = 'Jazy Anne Natan';
  int quantity = 4;
  double unitPrice = 75.50;
  bool isMember = true;

  print('=== WEEK 8: EXTENDED STORE LOGIC SYSTEM ===');
  print('Customer: $studentName');
  print('Is Member: $isMember\n');

  print('--- Checking Stock Availability ---');
  try {
    checkStockAvailability(requestedQuantity: quantity, availableStock: 10);
    print('Stock check passed successfully!');
  } catch (e) {
    print('Error Caught Gracefully: $e');
  }

  print('\n--- Processing Item Receipts ---');
  double total = calculateTotalWithItems(
    quantity: quantity,
    unitPrice: unitPrice,
    isMember: isMember,
  );

  bool isOver200 = total > 200;

  print('\n----------------------------------------');
  print('Final Order Total: ₱${total.toStringAsFixed(2)}');
  print('Is the total over ₱200? $isOver200');
  print('----------------------------------------');
}

double calculateTotalWithItems({
  required int quantity,
  required double unitPrice,
  required bool isMember,
}) {
  double subtotal = 0.0;

  for (int i = 1; i <= quantity; i++) {
    subtotal += unitPrice;
    print('  Item #$i processed: +₱$unitPrice (Running Total: ₱$subtotal)');
  }

  double finalTotal = subtotal;
  if (isMember && subtotal >= 200) {
    print('  -> Member VIP Perk Applied: 10% Discount!');
    finalTotal = subtotal * 0.90;
  } else if (isMember) {
    print('  -> Standard Member Perk Applied: 5% Discount!');
    finalTotal = subtotal * 0.95;
  } else {
    print('  -> Non-member rate applied (No discount).');
  }

  return finalTotal;
}

void checkStockAvailability({
  required int requestedQuantity,
  required int availableStock,
}) {
  if (requestedQuantity > availableStock) {
    throw Exception(
      'Insufficient stock! Requested $requestedQuantity items, but only $availableStock are available.',
    );
  }
  if (requestedQuantity <= 0) {
    throw Exception('Invalid order quantity! Quantity must be greater than 0.');
  }
}