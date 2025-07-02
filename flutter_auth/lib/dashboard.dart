import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate API data fetch
    Future.delayed(const Duration(seconds: 2), () {
      setState(() => _isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Animate(
          effects: [
            FadeEffect(),
            SlideEffect(begin: Offset(0, -0.2)),
          ],
          child: const Text("Welcome, Gurleen 👋"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Handle logout
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background animation (optional)
          Positioned.fill(
            child: Lottie.asset(
              'assets/animations/dashboard_bg.json',
              fit: BoxFit.cover,
            ),
          ),

          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Animate(
                        effects: [
                          FadeEffect(),
                          SlideEffect(begin: Offset(-0.3, 0)),
                        ],
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                            title: const Text("Gurleen Singh"),
                            subtitle: const Text("Full Stack Developer"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Stats Cards
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          _buildStatCard("Projects", "12", Icons.folder),
                          _buildStatCard("Meetings", "5", Icons.calendar_today),
                          _buildStatCard("Tasks", "23", Icons.task),
                          _buildStatCard("Clients", "8", Icons.people),
                        ].animate(interval: 300.ms),
                      ),
                      const SizedBox(height: 30),

                      // Actions
                      Animate(
                        effects: [FadeEffect(), ScaleEffect()],
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Go to profile/settings
                          },
                          icon: const Icon(Icons.person),
                          label: const Text("View Profile"),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String count, IconData icon) {
    return Animate(
      effects: [
        FadeEffect(),
        SlideEffect(begin: Offset(0.2, 0)),
      ],
      child: Container(
        width: 160,
        height: 100,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(0.95),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Colors.deepPurple),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  count,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(label),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
