

<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EduHub._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main id="MainContentSection" role="main">
        
        <!-- Hero Section -->
        <section class="hero-section text-center animate-fade-in">
            <div class="container">
                <h1 class="display-5 fw-bold mb-3">
                    Welcome to <span class="text-primary">EduHub</span>
                </h1>
                
                <p class="lead mx-auto" style="max-width: 700px;">
                    Your modern learning platform for mastering web development, programming, 
                    and database technologies. Built by students, for students.
                </p>

                <div class="mt-4 d-flex gap-3 justify-content-center flex-wrap">
                    <% if (Session["UserEmail"] != null) { %>
                        <a href="Resources/AllResources.aspx" class="btn btn-primary btn-lg">
                            <i class="bi bi-rocket-takeoff me-2"></i>Explore Resources
                        </a>
                    <% } else { %>
                        <a href="Account/Register.aspx" class="btn btn-primary btn-lg">
                            <i class="bi bi-person-plus me-2"></i>Get Started Free
                        </a>
                        <a href="Account/Login.aspx" class="btn btn-outline-primary btn-lg">
                            <i class="bi bi-box-arrow-in-right me-2"></i>Sign In
                        </a>
                    <% } %>
                </div>

                <% if (Session["FirstName"] != null) { %>
                <div class="mt-4">
                    <div class="alert alert-success d-inline-flex align-items-center" role="alert">
                        <i class="bi bi-check-circle-fill me-2"></i>
                        Welcome back, <strong class="ms-1"><%: Session["FirstName"] %></strong>! 
                        Ready to continue learning?
                    </div>
                </div>
                <% } %>
            </div>
        </section>

        <!-- Learning Paths Section -->
        <section class="my-5">
            <div class="text-center mb-4">
                <h2 class="fw-bold">
                    <i class="bi bi-map text-primary me-2"></i>
                    Learning Paths
                </h2>
                <p class="text-muted">Choose your journey and start mastering new skills</p>
            </div>

            <div class="row g-4">
                <!-- Web Development Path -->
                <div class="col-md-4">
                    <div class="card h-100 category-card">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="bi bi-code-slash text-primary" style="font-size: 3rem;"></i>
                            </div>
                            <h5 class="card-title">Web Development</h5>
                            <p class="card-text text-muted">
                                Master HTML5, CSS3, JavaScript, and ASP.NET to build modern, 
                                responsive web applications.
                            </p>
                            <a href="Resources/AllResources.aspx?category=Web" class="btn btn-sm btn-outline-primary mt-2">
                                <i class="bi bi-arrow-right me-1"></i>View Path
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Programming Path -->
                <div class="col-md-4">
                    <div class="card h-100 category-card">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="bi bi-cpu text-success" style="font-size: 3rem;"></i>
                            </div>
                            <h5 class="card-title">Programming</h5>
                            <p class="card-text text-muted">
                                Build strong foundations in C#, algorithms, and 
                                object-oriented programming principles.
                            </p>
                            <a href="Resources/AllResources.aspx?category=Programming" class="btn btn-sm btn-outline-primary mt-2">
                                <i class="bi bi-arrow-right me-1"></i>View Path
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Database Path -->
                <div class="col-md-4">
                    <div class="card h-100 category-card">
                        <div class="card-body text-center">
                            <div class="mb-3">
                                <i class="bi bi-database text-primary" style="font-size: 3rem;"></i>
                            </div>
                            <h5 class="card-title">Database & SQL</h5>
                            <p class="card-text text-muted">
                                Learn database design, SQL queries, and data management 
                                with hands-on examples.
                            </p>
                            <a href="Resources/AllResources.aspx?category=Database" class="btn btn-sm btn-outline-primary mt-2">
                                <i class="bi bi-arrow-right me-1"></i>View Path
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Section -->
        <section class="my-5 py-5 bg-light rounded-4">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="fw-bold">
                        <i class="bi bi-stars text-primary me-2"></i>
                        Why Choose EduHub?
                    </h2>
                    <p class="text-muted">Modern features for modern learners</p>
                </div>

                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card border-0 h-100 text-center">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-lightning-charge-fill text-success" style="font-size: 2.5rem;"></i>
                                </div>
                                <h5 class="card-title fw-bold">Fast & Efficient</h5>
                                <p class="card-text text-muted">
                                    Quick access to curated learning materials. 
                                    No clutter, just pure learning content.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card border-0 h-100 text-center">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-shield-check text-primary" style="font-size: 2.5rem;"></i>
                                </div>
                                <h5 class="card-title fw-bold">Secure & Reliable</h5>
                                <p class="card-text text-muted">
                                    Your data is protected with industry-standard 
                                    encryption and security practices.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card border-0 h-100 text-center">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-people-fill text-success" style="font-size: 2.5rem;"></i>
                                </div>
                                <h5 class="card-title fw-bold">Student Focused</h5>
                                <p class="card-text text-muted">
                                    Built by students who understand what 
                                    learners actually need.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Stats Section -->
        <section class="my-5 text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-4">
                        <div class="p-4">
                            <div class="display-4 fw-bold text-primary mb-2">500+</div>
                            <p class="text-muted fw-semibold">Learning Resources</p>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="p-4">
                            <div class="display-4 fw-bold text-success mb-2">1000+</div>
                            <p class="text-muted fw-semibold">Active Students</p>
                        </div>
                    </div>
                    <div class="col-md-4 mb-4">
                        <div class="p-4">
                            <div class="display-4 fw-bold text-primary mb-2">24/7</div>
                            <p class="text-muted fw-semibold">Access Anytime</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA Section -->
        <section class="my-5 py-5 text-center" style="background: linear-gradient(135deg, #dbeafe 0%, #d1fae5 100%); border-radius: 16px;">
            <div class="container">
                <h2 class="fw-bold mb-3">Ready to Start Your Learning Journey?</h2>
                <p class="lead mb-4 text-muted">
                    Join thousands of students mastering web development and programming skills
                </p>
                
                <% if (Session["UserEmail"] == null) { %>
                    <a href="Account/Register.aspx" class="btn btn-primary btn-lg me-2">
                        <i class="bi bi-rocket-takeoff me-2"></i>Get Started Now
                    </a>
                    <a href="Resources/AllResources.aspx" class="btn btn-outline-primary btn-lg">
                        <i class="bi bi-eye me-2"></i>Preview Resources
                    </a>
                <% } else { %>
                    <a href="Resources/AllResources.aspx" class="btn btn-primary btn-lg">
                        <i class="bi bi-book me-2"></i>Continue Learning
                    </a>
                <% } %>
            </div>
        </section>

    </main>
</asp:Content>
