class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question(
      {this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "La venta de un activo es un ingreso no operativo",
    "options": ['Verdadero', 'Falso'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "La venta de un producto es un gasto no operativo",
    "options": ['Verdadero', 'Falso'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "El estado de ingreso te muestra las ganancias y perdidas durante un periodo de tiempo",
    "options": ['Verdadero', 'Falso'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question": "Los dueños de los negocios lo usan para  identificar area de negocios",
    "options": ['Verdadero', 'Falso'],
    "answer_index": 0
  },
];
