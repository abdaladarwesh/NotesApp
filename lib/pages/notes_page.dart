import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: const [
                    NoteCard(
                      title: 'Morning Reflections',
                      preview: 'Today started with a beautiful sunrise. Feeling grateful for...',
                      date: 'Apr 4, 2026',
                      tag: 'Personal',
                      isFavorite: true,
                    ),
                    NoteCard(
                      title: 'Project Ideas',
                      preview: 'New app concept: A mindfulness tracker that combines...',
                      date: 'Apr 3, 2026',
                      tag: 'Ideas',
                      isFavorite: false,
                    ),
                    NoteCard(
                      title: 'Meeting Notes',
                      preview: 'Discussed Q2 goals with the team. Key takeaways include...',
                      date: 'Apr 2, 2026',
                      tag: 'Work',
                      isFavorite: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'All Notes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A202C)),
            ),
            Text('8 notes', style: TextStyle(color: Colors.grey)),
          ],
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xFF3E6D67),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.list, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFE2E8F0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.grid_view_rounded, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class NoteCard extends StatelessWidget {
  final String title;
  final String preview;
  final String date;
  final String tag;
  final bool isFavorite;

  const NoteCard({
    super.key,
    required this.title,
    required this.preview,
    required this.date,
    required this.tag,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
  }
}