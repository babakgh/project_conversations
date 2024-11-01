# Projec Conversations
A simple Rails 7 project for tracking project statuses and their history.

## Development Notes
To complete this assessment within the 3-hour time limit, several strategic decisions were made to prioritize core functionality while maintaining code quality.

### Implemented Features
* Basic project status tracking system
* Activity history for status changes and comments
* Minimal authentication (username only)
* Real-time status updates
* Comment functionality on projects
* Clean, maintainable code structure
* ViewComponent integration for reusable UI elements
* Slim templates for cleaner views
* Tailwind CSS for styling

### Strategic Simplifications
* Username-only authentication (no passwords/registration)
* Pre-seeded users and projects
* Status changes and comments only - no project creation/editing
* No file attachments or rich text
* Skipped test suite implementation
* No code analysis tools (Rubocop, Reek)
* Minimal frontend work and styling
* Standard Rails configuration
* Basic Git commit messages

### Conclusion
This implementation demonstrates the core functionality while maintaining code quality within the time constraint. The decisions made allow for future expansion while providing a solid foundation for the basic requirements.

## Prerequisites
- Docker

## Starting the Application
To start the application, follow these steps:

1. Clone the repository:
   ```bash
   git clone git@github.com:babakgh/project_conversations.git
   cd project_conversations
   ```

2. Start the application using Docker Compose:
   ```bash
   docker compose up --build
   ```
   This command will:
   - Build the Docker images
   - Create and start the containers
   - Set up the database
   - Run migrations
   - Seed initial data

3. The application should now be running and accessible at `http://localhost:3000`

### Test Users
You can log in using either of these pre-seeded users:
- Username: `babak`
- Username: `john`

### Database Management
- To completely reset the application and remove all data:
  ```bash
  docker compose down -v
  ```
  This will remove all containers and volumes, giving you a fresh start.

### Troubleshooting
If you encounter any issues:
1. Ensure ports 3000 and 5432 are not in use
2. Try resetting everything with `docker compose down -v`
3. Check the logs with `docker compose logs`
