-- Seed Data for Steam Portfolio Database

-- 1. Insert Profile
INSERT INTO profile (name, title, summary, level, avatar_url, avatar_frame_url, resume_url)
VALUES (
    'Edy Kelvianto',
    'Fullstack Developer',
    'Dynamic Fullstack Developer with expertise in building scalable web applications using ASP.NET and React.js. Proven track record in optimizing database performance through complex SQL/HANA query development.',
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
    (1, '.NET 8', 1),
    (1, '.NET Core', 2),
    (1, 'C#', 3),
    (1, 'JavaScript', 4),
    (1, 'SQL', 5),
    (1, 'B1 Hana', 6),
    (1, 'EF Core', 7),
    (1, 'REST API', 8),
    (1, 'Spring Boot', 9);


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
    (3, 'Performance Tuning', 4),
    (3, 'Indexing', 5);

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
-- SHIMANO
INSERT INTO experiences (position, company, location, duration, display_order)
VALUES ('Fullstack Developer', 'Golden Batam raya', 'Indonesia', 'Jul 2024 - Present', 1);

INSERT INTO experience_responsibilities (experience_id, description, display_order) VALUES
    (1, 'Write complex Sap B1 Hana report so our department can use the report to increase their work efficient', 1),
    (1, 'Design a SAP Crystal report rpt that ', 2),
    (1, 'Achieved a 99.9% uptime for critical manufacturing processes by migrating legacy workflows to Google Cloud (GCP), leveraging Cloud Run Functions and Application Integration', 3),
    (1, 'Revamped the SDLC by implementing a Feature Branching strategy and CI/CD pipelines, reducing code conflicts by 80% and enhancing deployment reliability across SEA and China', 4),
    (1, 'Refactored Reporting T-SQL queries, achieving a 99% execution speed improvement (hours to seconds) by analyzing execution plan and applying proper indexing', 5),
    (1, 'Developed automated data integration solutions synchronizing SharePoint and Caspio platforms data to SQL Server using .NET 8 and RESTful APIs, enabling audit trail capabilities', 6);

    
-- ANACLE
INSERT INTO experiences (position, company, location, duration, display_order)
VALUES ('Full Stack Developer', 'ANACLE', 'Singapore', 'Dec 2021 - Oct 2022', 2);

INSERT INTO experience_responsibilities (experience_id, description, display_order) VALUES
    (2, 'Managed and modernized the ANACLE Simplicity system, supporting the Enterprise Asset Management (EAM) module across ASP.NET Web Forms, Web API, and Xamarin Forms', 1),
    (2, 'Transitioned infrastructure to H-Cloud environment, ensuring seamless data exchange and application functionality across restricted internet and intranet zones', 2),
    (2, 'Integrated 2FA and Google Maps services within high-security environments by managing whitelist requests and implementing local library referencing for blocked JavaScript assets', 3);

-- Business Connectivity
INSERT INTO experiences (position, company, location, duration, display_order)
VALUES ('Full Stack Developer', 'Business Connectivity', 'Singapore', 'Dec 2019 - Dec 2021', 3);

INSERT INTO experience_responsibilities (experience_id, description, display_order) VALUES
    (3, 'Engineered enterprise-scale web applications using ASP.NET Core, C#, and JavaScript, delivering high-performance backend logic and responsive UI components', 1),
    (3, 'Migrated legacy systems to AWS EC2, optimizing instance configurations to improve scalability and maintain a 99.9% system uptime', 2),
    (3, 'Developed a geolocation verification module in Flutter using Google Maps API, achieving 99% location accuracy and eliminating fraudulent field check-ins', 3),
    (3, 'Automated delivery scheduling by integrating Google Workspace APIs with the ERP system, triggering real-time Google Calendar updates upon invoice finalization', 4);

-- Celindo Pratama
INSERT INTO experiences (position, company, location, duration, display_order)
VALUES ('Software Engineer', 'Celindo Pratama', 'Batam, Indonesia', 'Aug 2014 - Dec 2019', 4);

INSERT INTO experience_responsibilities (experience_id, description, display_order) VALUES
    (4, 'Modernized application architecture by leading the transition from ASP.NET Web Forms to ASP.NET MVC, improving maintainability and alignment with industry standards', 1),
    (4, 'Designed and implemented manufacturing systems tailored to client business needs using C# WinForms and ASP.NET Web Forms', 2),
    (4, 'Engaged directly with customers to translate complex business requirements into functional software specifications and system designs', 3);

-- 5. Insert Projects
INSERT INTO projects (title, description, url, github_url, image_url, display_order)
VALUES (
    'URL Shortener',
    'Simple URL shortener with Minimal API, PostgreSQL hosted on Azure Web App with automated deployment via GitHub Actions',
    'https://kelbin-url-shortener-cue0bccgdze6ccfy.southeastasia-01.azurewebsites.net/',
    'https://github.com/kelbindev/url-shortener',
    'https://via.placeholder.com/200x150/1b2838/66c0f4?text=URL+Shortener',
    1
);

INSERT INTO project_technologies (project_id, technology, display_order) VALUES
    (1, 'C#', 1),
    (1, 'Minimal API', 2),
    (1, 'PostgreSQL', 3),
    (1, 'Azure', 4),
    (1, 'Azure Key Vault', 5),
    (1, 'Azure Web Apps', 6),
    (1, 'Github Actions', 7);

INSERT INTO projects (title, description, url, github_url, image_url, display_order)
VALUES (
    'Blazor Games',
    'Blazor web app containing mini-games with automated deployment through GitHub Actions',
    'https://kelbindev.github.io/',
    'https://github.com/kelbindev/blazor-games',
    'https://via.placeholder.com/200x150/1b2838/66c0f4?text=Blazor+Games',
    2
);

INSERT INTO project_technologies (project_id, technology, display_order) VALUES
    (2, 'C#', 1),
    (2, 'Blazor', 2),
    (2, 'Azure Static Web App', 3),
    (2, 'Github Actions', 4);

-- 6. Insert Education
INSERT INTO education (degree, school, location)
VALUES ('Bachelor of Information Technology', 'University of Putera Batam', 'Batam, Indonesia');

-- 7. Insert Contact Links
INSERT INTO contact_links (icon, text, url, display_order) VALUES
    ('bi-linkedin', 'LinkedIn', 'https://linkedin.com/in/kelbin-kelbin', 1),
    ('bi-github', 'GitHub', 'https://github.com/kelbindev', 2),
    ('bi-envelope-fill', 'kelbinlin95@gmail.com', 'mailto:kelbinlin95@gmail.com', 3),
    ('bi-telephone-fill', '+65 8548 3315', 'tel:+6585483315', 4),
    ('bi-steam', 'ribbit', 'https://steamcommunity.com/id/kbkbkb95/', 5);

-- 8. Insert Location
INSERT INTO location_info (location)
VALUES ('Indonesia');
