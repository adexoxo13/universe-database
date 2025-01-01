🔍 Project Overview

This project is part of the freeCodeCamp Relational Databases Certification. The goal is to create and manage a PostgreSQL database that tracks various celestial entities with features like names, descriptions, and relationships between them.

You'll:

Create and design database tables.
Define relationships between galaxies, stars, planets, and moons.
Populate the database with meaningful data.
Ensure the database passes all tests for validation.
The original project description can be found at freeCodeCamp.org.

🛠️ Instructions

To complete the project, follow these steps:

Log in to PostgreSQL: Open your terminal and enter:
psql --username=freecodecamp --dbname=postgres
Create Your Database: Build the required tables and relationships as outlined in the project tests.
Pass All Tests: Ensure your database schema and data pass all validation checks. Be creative! For instance, consider adding columns like description, has_life, is_spherical, age_in_millions_of_years, or even types like planet_types and galaxy_types.
Save Your Database Progress: If you leave your virtual machine, your database might not persist. Save your database by creating a dump file:
pg_dump -cC --inserts -U freecodecamp universe > universe.sql
This command generates a file (universe.sql) containing all the SQL commands needed to rebuild your database.
Rebuild Your Database: If needed, you can restore your database using:
psql -U postgres < universe.sql
📝 Features

Galaxies: Organize galaxies by name, age, and number of stars.
Stars: Add information about stars, their size, and which galaxy they belong to.
Planets: Track planets and attributes like their age, habitability, and shape.
Moons: Keep details about moons, including their size and the planet they orbit.
Here's an idea of the columns and relationships you might create:

galaxy_id, star_id, planet_id, moon_id
Attributes like distance_from_earth, is_habitable, or it_weights_in_kg
💾 Saving and Submitting Your Work

Save your database progress in a public repository.
Include the universe.sql dump file in your repository.
Submit the URL of your repository to freeCodeCamp.org.
Example Commands for Git:
# Initialize a new repository
git init

# Add and commit your dump file
git add universe.sql
git commit -m "Add database dump"

# Push to GitHub (replace <your-repo-url> with your repository URL)
git remote add origin <your-repo-url>
git push -u origin main
🎉 Have Fun!

Database design doesn’t have to be boring—let your imagination run wild! 🌠

Feel free to explore new columns or table designs. For example:

Add a discovery_date column to track when celestial bodies were discovered.
Include a discovered_by column to honor astronomers and scientists.
Get creative and make your Universe Database truly unique. Good luck, and enjoy building your piece of the cosmos! 🌌✨

Let me know if you'd like further tweaks or additional sections!
