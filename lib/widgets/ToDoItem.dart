import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import '../models/ToDo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key, required this.todo, required this.onToDoChanged, required this.onDeleteItem});

  final ToDo todo;
  final dynamic onToDoChanged;
  final dynamic onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.deepPurpleAccent.shade100,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText ,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Container(
          height: 30,
          width: 30,
          padding: EdgeInsets.zero,
          decoration:
              BoxDecoration(color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            iconSize: 14,
            color: Colors.white,
            icon: const Icon(
              Icons.delete,
            ),
            onPressed: () {
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
