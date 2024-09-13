import 'package:flutter/material.dart';
import 'package:to_do_list/controllers/todo_con.dart';
import 'package:to_do_list/utils/app_styles.dart';
import 'package:to_do_list/widgets/add_todo.dart';
import 'package:to_do_list/widgets/todo_items_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TodoController _todoController = TodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
          style: AppStyles.appBarTitleStyle,
        ),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: ListView.builder(
        itemCount: _todoController.todos.length,
        itemBuilder: (context, index) {
          final todo = _todoController.todos[index];
          return TodoItemWidget(
            todo: todo,
            onDelete: () {
              _todoController.deleteTodo(todo);
              setState(() {});
            },
            onToggleCompleted: () {
              _todoController.toggleComplete(todo);
              setState(() {});
            },
            onUpdate: (updatedTodo) {
              _todoController.updateTodo(updatedTodo);
              setState(() {});
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) => AddTodoBottomSheet(
                    onAdd: (todo) {
                      setState(() {
                        _todoController.addTodo(todo);
                      });
                    },
                  ));
        },
        backgroundColor: AppStyles.primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
