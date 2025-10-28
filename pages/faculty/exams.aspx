﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/faculty/exams.Master" AutoEventWireup="true" CodeBehind="exams.aspx.cs" Inherits="EduErp.pages.faculty.exams1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="container-fluid">
        <div class="row">
            <!-- Mobile Navigation Toggle -->
            <button class="mobile-nav-toggle d-md-none" type="button">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Sidebar Overlay -->
            <div class="sidebar-overlay">
            </div>
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 px-0">
                <div class="sidebar bg-white border-end p-3">
                    <div class="text-center mb-4">
                        <h4 class="text-primary fw-bold">College ERP</h4>
                        <p class="text-muted small">
                            Faculty Dashboard
                        </p>
                    </div>
                    <nav class="nav flex-column">
                        <a class="nav-link text-dark" href="dashboard.aspx"><i class="fas fa-tachometer-alt me-2 text-primary"></i>Dashboard </a><a class="nav-link text-dark" href="courses.aspx"><i class="fas fa-book me-2 text-primary"></i>My Courses </a><a class="nav-link text-dark" href="attendance.aspx"><i class="fas fa-calendar-check me-2 text-primary"></i>Attendance </a><a class="nav-link text-dark" href="timetable.aspx"><i class="fas fa-clock me-2 text-primary"></i>My Timetable </a><a class="nav-link active" href="exams.aspx"><i class="fas fa-file-alt me-2 text-primary"></i>Exams </a><a class="nav-link text-dark" href="students.aspx"><i class="fas fa-users me-2 text-primary"></i>My Students </a><a class="nav-link text-dark" href="notices.aspx"><i class="fas fa-bullhorn me-2 text-primary"></i>Notices </a><a class="nav-link text-dark" href="profile.aspx"><i class="fas fa-user-cog me-2 text-primary"></i>Edit Profile </a>
                    </nav>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 main-content">
                <!-- Top Navigation -->
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <div>
                        <h1 class="h2">Exams Management</h1>
                        <p class="text-muted">
                            Create and manage exams for your courses
                        </p>
                    </div>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group me-2">
                            <button type="button" class="btn btn-sm btn-success" data-bs-toggle="modal" data-bs-target="#createExamModal">
                                <i class="fas fa-plus me-1"></i>Create Exam
                            </button>
                            <button type="button" class="btn btn-sm btn-outline-secondary">
                                <i class="fas fa-download me-1"></i>Export
                            </button>
                        </div>
                        <div class="dropdown">
                            <button class="btn btn-sm btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                <i class="fas fa-user me-1"></i>Faculty
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="profile.aspx"><i class="fas fa-user-cog me-2 text-primary"></i>Profile</a></li>
                                <li><a class="dropdown-item" href="settings.aspx"><i class="fas fa-cog me-2 text-primary"></i>Settings</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="../../index.aspx"><i class="fas fa-sign-out-alt me-2 text-primary"></i>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Exam Statistics -->
                <div class="row mb-4">
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            Total Exams
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            12
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-file-alt fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                            Upcoming Exams
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            3
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clock fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Graded Exams
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            8
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-check-circle fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                            Pending Grading
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            1
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-hourglass-half fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Filter Tabs -->
                <ul class="nav nav-tabs mb-4" id="examTabs" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="upcoming-tab" data-bs-toggle="tab" data-bs-target="#upcoming" type="button" role="tab">
                            <i class="fas fa-clock me-2 text-primary"></i>Upcoming Exams
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link text-dark" id="ongoing-tab" data-bs-toggle="tab" data-bs-target="#ongoing" type="button" role="tab">
                            <i class="fas fa-play me-2 text-primary"></i>Ongoing Exams
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link text-dark" id="completed-tab" data-bs-toggle="tab" data-bs-target="#completed" type="button" role="tab">
                            <i class="fas fa-check me-2 text-primary"></i>Completed Exams
                        </button>
                    </li>
                </ul>

                <!-- Tab Content -->
                <div class="tab-content" id="examTabContent">
                    <!-- Upcoming Exams -->
                    <div class="tab-pane fade show active" id="upcoming" role="tabpanel">
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <div class="card exam-card shadow-sm">
                                    <div class="card-header bg-warning text-dark">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0"><i class="fas fa-calculator me-2 text-primary"></i>Advanced Mathematics - Final </h5>
                                            <span class="badge bg-dark">Upcoming</span>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">
                                            <strong>Date:</strong> December 18, 2024<br>
                                            <strong>Time:</strong> 10:00 AM - 1:00 PM<br>
                                            <strong>Room:</strong> Hall A-101<br>
                                            <strong>Students:</strong> 65<br>
                                            <strong>Duration:</strong> 3 hours
                                        </p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="btn-group" role="group">
                                            <button class="btn btn-sm btn-outline-primary">
                                                <i class="fas fa-edit me-1"></i>Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-success">
                                                <i class="fas fa-list me-1"></i>View Students
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash me-1"></i>Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <div class="card exam-card shadow-sm">
                                    <div class="card-header bg-info text-white">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <h5 class="card-title mb-0"><i class="fas fa-atom me-2 text-primary"></i>Quantum Physics - Midterm </h5>
                                            <span class="badge bg-light text-dark">Upcoming</span>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">
                                            <strong>Date:</strong> December 20, 2024<br>
                                            <strong>Time:</strong> 2:00 PM - 4:00 PM<br>
                                            <strong>Room:</strong> Hall B-205<br>
                                            <strong>Students:</strong> 42<br>
                                            <strong>Duration:</strong> 2 hours
                                        </p>
                                    </div>
                                    <div class="card-footer">
                                        <div class="btn-group" role="group">
                                            <button class="btn btn-sm btn-outline-primary">
                                                <i class="fas fa-edit me-1"></i>Edit
                                            </button>
                                            <button class="btn btn-sm btn-outline-success">
                                                <i class="fas fa-list me-1"></i>View Students
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash me-1"></i>Delete
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Ongoing Exams -->
                    <div class="tab-pane fade" id="ongoing" role="tabpanel">
                        <div class="alert alert-info" role="alert">
                            <i class="fas fa-info-circle me-2 text-primary"></i>No exams are currently ongoing.
                        </div>
                    </div>

                    <!-- Completed Exams -->
                    <div class="tab-pane fade" id="completed" role="tabpanel">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title mb-0"><i class="fas fa-history me-2 text-primary"></i>Completed Exams </h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Course</th>
                                                <th>Exam Type</th>
                                                <th>Date</th>
                                                <th>Students</th>
                                                <th>Graded</th>
                                                <th>Average Score</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Data Structures</td>
                                                <td>Midterm</td>
                                                <td>Nov 20, 2024</td>
                                                <td>78</td>
                                                <td><span class="badge bg-success">Complete</span></td>
                                                <td>82.5%</td>
                                                <td>
                                                    <button class="btn btn-sm btn-outline-primary">
                                                        <i class="fas fa-eye"></i>
                                                    </button>
                                                    <button class="btn btn-sm btn-outline-success">
                                                        <i class="fas fa-download"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Machine Learning</td>
                                                <td>Assignment</td>
                                                <td>Nov 15, 2024</td>
                                                <td>35</td>
                                                <td><span class="badge bg-warning">Pending</span></td>
                                                <td>-</td>
                                                <td>
                                                    <button class="btn btn-sm btn-outline-warning">
                                                        <i class="fas fa-edit"></i>Grade
                                                    </button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Database Systems</td>
                                                <td>Quiz</td>
                                                <td>Nov 10, 2024</td>
                                                <td>65</td>
                                                <td><span class="badge bg-success">Complete</span></td>
                                                <td>76.8%</td>
                                                <td>
                                                    <button class="btn btn-sm btn-outline-primary">
                                                        <i class="fas fa-eye"></i>
                                                    </button>
                                                    <button class="btn btn-sm btn-outline-success">
                                                        <i class="fas fa-download"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


