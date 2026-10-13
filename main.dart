void main() {
  String studentName = 'Jazy Anne Natan';
  int quantity = 4;
  double unitPrice = 75.50;
  bool isMember = true;

  print('=== STORE LOGIC & INVENTORY SYSTEM ===');
  print('Customer Name : $studentName');
  print('Is Member     : $isMember\n');

  print('--- Checking Stock Availability ---');
  try {
    checkStockAvailability(requestedQuantity: 15, availableStock: 10);
  } catch (e) {
    print('Error Caught Gracefully: $e');
  }

  print('\n--- Processing Purchase ---');
  double total = calculateTotalWithItems(
    quantity: quantity,
    unitPrice: unitPrice,
    isMember: isMember,
  );

  bool isOver200 = total > 200;

  print('\n----------------------------------------');
  print('Final Order Total       : ₱${total.toStringAsFixed(2)}');
  print('Is total over ₱200?    : $isOver200');
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
    print('  Processing item #$i... Running Total: ₱${subtotal.toStringAsFixed(2)}');
  }

  double finalTotal = subtotal;
  if (isMember && subtotal >= 200) {
    print('  [Perk] VIP Member 10% discount applied!');
    finalTotal = subtotal * 0.90;
  } else if (isMember) {
    print('  [Perk] Standard Member 5% discount applied!');
    finalTotal = subtotal * 0.95;
  } else {
    print('  [Notice] Standard customer pricing (No discount).');
  }

  return finalTotal;
}

void checkStockAvailability({
  required int requestedQuantity,
  required int availableStock,
}) {
  if (requestedQuantity > availableStock) {
    throw Exception('Requested $requestedQuantity items, but only $availableStock are in stock.');
  }
}