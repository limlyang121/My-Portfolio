-- Seed Data for Steam Portfolio Database

-- 1. Insert Profile
INSERT INTO profile (name, title, summary, level, avatar_url, avatar_frame_url, resume_url)
VALUES (
    'Edy Kelvianto',
    'Fullstack Developer',
    'Fullstack developer with hands-on experience building internal web applications using ASP.NET and React.js. Experienced in SAP Business One integration, custom report development, and writing complex SQL/HANA queries for data extraction and performance optimization.',
    23,
    'images/profile.jpg',
    'images/profile-frame.png',
    'docs/resume.pdf'
);

-- 2. Insert Stats
INSERT INTO stats (profile_id, value, label, display_order)
VALUES 
    (1, '1+', 'Years Experience', 1);

-- 3. Insert Skill Categories and Skills
-- Backend
INSERT INTO skill_categories (title, display_order) VALUES ('Backend', 1);
INSERT INTO skills (category_id, name, display_order) VALUES
    (1, '.NET Classic', 1),
    (1, '.NET Core', 2),
    (1, 'C#', 3),
    (1, 'EF Core', 4),
    (1, 'REST API', 5),
    (1, 'Spring Boot', 6),
    (1, 'Blazor', 6);


-- Frontend
INSERT INTO skill_categories (title, display_order) VALUES ('Frontend', 2);
INSERT INTO skills (category_id, name, display_order) VALUES
    (2, 'React.js', 1),
    (2, 'ASP.NET MVC', 2),
    (2, 'Razor Pages', 3),
    (2, 'Thymeleaf', 4);

-- Database
INSERT INTO skill_categories (title, display_order) VALUES ('Database', 3);
INSERT INTO skills (category_id, name, display_order) VALUES
    (3, 'MS SQL Server', 1),
    (3, 'PostgreSQL', 2),
    (3, 'SAP B1 Hana', 3),
    (3, 'Indexing', 4);

INSERT INTO skill_categories (title, display_order) VALUES ('Cloud', 4);
INSERT INTO skills (category_id, name, display_order) VALUES
    (4, 'Google Cloud', 1),
    (4, 'Docker', 2),
    (4, 'Git', 3),
    (4, 'GitHub', 4);

-- Security & Identity
INSERT INTO skill_categories (title, display_order) VALUES ('Security & Identity', 5);
INSERT INTO skills (category_id, name, display_order) VALUES
    (5, 'JWT', 1),
    (5, '2FA', 2),
    (5, 'Spring Security', 3),
    (5, 'AES', 4),
    (5, 'Bcrypt', 5);

    

-- 4. Insert Work Experience
INSERT INTO experiences (position, company, location, duration, display_order)
VALUES ('Fullstack Developer', 'Golden Batam raya', 'Indonesia', 'Jul 2024 - Present', 1);

INSERT INTO experience_responsibilities (experience_id, description, display_order) VALUES
    (1, 'Developed complex SAP B1 HANA Query reports to automate data extraction and analysis, significantly improving departmental workflow efficiency through optimized data visibility.', 1),
    (1, 'Designed custom SAP Crystal Reports (.rpt) tailored to cross-departmental requirements, transforming raw business data into actionable insights for internal stakeholders.', 2),
    (1, 'Developed a high-performance POS system using React.js and ASP.NET, ensuring efficient data handling and a responsive user interface.', 3),
    (1, 'Developed a custom reporting engine using ASP.NET and Vanilla JavaScript featuring dynamic column selection and filtering. Optimized database overhead by implementing precise field selection, preventing unnecessary resource consumption from high-volume SAP tables.', 4),
    (1, 'Engineered a high-complexity web application using React.js and ASP.NET to replicate and modernize SAP Business One Marketing Document workflows, providing a more streamlined and responsive internal interface', 5),
    (1, 'Developed a Batch-based automation solution to streamline SAP B1 data redundancy. The script manages the transfer of backup archives to local servers and executes secure cloud synchronization to Google Drive using Rclone.', 6),
    (1, 'Engineered a PowerShell-based remote management tool allowing users to securely trigger server shutdowns (Linux/Proxmox) from their workstations. Implemented custom credential validation logic to ensure authorized access before executing administrative commands.', 7);



-- 5. Insert Projects
INSERT INTO projects (title, description, url, github_url, image_url, display_order)
VALUES (
    'Research Conference Project',
    'A Conference Research system that using React.js + Spring boot + Postgresql Technology',
    'https://front-end-research.herokuapp.com/',
    'https://github.com/limlyang121/Front-end-Research',
    'https://via.placeholder.com/200x150/1b2838/66c0f4?text=URL+Shortener',
    1
);

INSERT INTO project_technologies (project_id, technology, display_order) VALUES
    (1, 'React.js', 1),
    (1, 'Spring Boot', 2),
    (1, 'PostgreSQL', 3),
    (1, 'Spring Security', 4),
    (1, 'Google Drive API', 5),
    (1, 'JWT Auth token', 6);

INSERT INTO projects (title, description, url, github_url, image_url, display_order)
VALUES (
    'Portfolio',
    'My Portfolio',
    'https://edy-kelvianto.com/', 
    'https://github.com/limlyang121/My-Portfolio', 
    'https://via.placeholder.com/200x150/1b2838/66c0f4?text=Steam+Portfolio',
    2
);

-- Insert Technologies for Project ID 2 (Assuming the next ID is 2)
INSERT INTO project_technologies (project_id, technology, display_order) VALUES
    (2, 'Blazor (C#)', 1),
    (2, '.NET 8', 2),
    (2, '.Github Action', 3),
    (2, 'PostgreSQL', 4),
    (2, 'Docker', 5),
    (2, 'Nginx', 6),
    (2, 'Linux VPS', 7);

-- 6. Insert Education
INSERT INTO education (degree, school, location)
VALUES ('Bachelor of Computer Science (Digital system Security )', 'University of Wollongong', 'Singapore');

-- 7. Insert Contact Links
INSERT INTO contact_links (icon, text, url, display_order) VALUES
    ('bi-linkedin', 'LinkedIn', 'https://www.linkedin.com/in/edy-kelvianto-440156202/', 1),
    ('bi-github', 'GitHub', 'https://github.com/limlyang121', 2),
    ('bi-envelope-fill', 'limlyang121@outlook.com', 'mailto:limlyang121@outlook.com', 3),
    ('bi-telephone-fill', '+62 853 5623 1234', 'tel:+6285356231234', 4),
    ('bi-steam', 'Yang', 'https://steamcommunity.com/profiles/76561198068953669/', 5);

-- 8. Insert Location
INSERT INTO location_info (location)
VALUES ('Indonesia');
