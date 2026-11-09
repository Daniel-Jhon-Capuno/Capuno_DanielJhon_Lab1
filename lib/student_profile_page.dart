import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header Card with Avatar, Name, and Course
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  child: Column(
                    children: [
                      // Profile Avatar
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.indigo.withAlpha(60),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.indigo,
                          child: Text(
                            'DC',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Student Name
                      const Text(
                        'Daniel Jhon Capuno',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      const SizedBox(height: 6),
                      // Course / Program & Age
                      const Text(
                        'BS Information Technology • 20 yrs old',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Status Badge
                      Chip(
                        avatar: const Icon(
                          Icons.verified,
                          size: 18,
                          color: Colors.indigo,
                        ),
                        label: const Text('Regular Student'),
                        backgroundColor: Colors.indigo.shade50,
                        side: BorderSide(color: Colors.indigo.shade200),
                        labelStyle: TextStyle(
                          color: Colors.indigo.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Academic and Contact Details Card
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.badge, color: Colors.indigo),
                      title: Text('Student Number'),
                      subtitle: Text('554505'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.indigo),
                      title: Text('Year Level and Section'),
                      subtitle: Text('3rd Year - BSIT 3A'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.indigo),
                      title: Text('Email Address'),
                      subtitle: Text('d.capuno.554505@umindanao.edu.ph'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // About Me Section Card
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.indigo),
                          SizedBox(width: 8),
                          Text(
                            'About Me',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'I am a 20-year-old Information Technology student who is passionate '
                        'about software design and mobile development. In my free time, I balance '
                        'my creative side with analytical problem solving through arts and programming.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Hobbies and Interests Section Card
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.interests, color: Colors.indigo),
                          SizedBox(width: 8),
                          Text(
                            'Hobbies and Interests',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _buildHobbyChip(
                            label: 'Painting',
                            icon: Icons.palette,
                          ),
                          _buildHobbyChip(
                            label: 'Reading',
                            icon: Icons.menu_book,
                          ),
                          _buildHobbyChip(
                            label: 'Classical Music',
                            icon: Icons.music_note,
                          ),
                          _buildHobbyChip(
                            label: 'Badminton',
                            icon: Icons.sports_tennis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHobbyChip({required String label, required IconData icon}) {
    return Chip(
      avatar: Icon(icon, size: 16, color: Colors.indigo),
      label: Text(label),
      backgroundColor: Colors.white,
      side: BorderSide(color: Colors.indigo.shade200),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
    );
  }
}
