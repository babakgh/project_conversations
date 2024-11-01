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
1. Authentication
   * Username-only authentication without passwords
   * No user registration - using seeded users
   * Skipped authorization layers
   * No remember me functionality

2. Project Management
   * Read-only project entities (no creation/updates)
   * Focus on status changes only
   * Basic comment functionality
   * No file attachments or rich text

3. Testing
   * Skipped unit tests
   * Skipped integration tests
   * No automated UI tests
   * Manual testing of core functionality

4. Code Quality
   * Skipped static code analysis (Rubocop, Reek)
   * No code documentation tools
   * Basic Git commit messages
   * Minimal comments in code

5. Frontend
   * Minimal JavaScript
   * Basic Tailwind styling
   * No custom CSS
   * Limited responsive design

6. Rails Configuration
   * Kept default middleware
   * Standard Rails structure
   * No custom configurations
   * Default gem settings

### Technical Decisions
* Used ViewComponents for reusability
* Implemented basic activity tracking
* Focused on core data models
* Maintained REST principles
* Used Rails conventions

### Conclusion
This implementation demonstrates the core functionality while maintaining code quality within the time constraint. The decisions made allow for future expansion while providing a solid foundation for the basic requirements.
Last edited just now

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
