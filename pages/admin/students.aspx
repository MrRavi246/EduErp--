<%@ Page Title="" Language="C#" MasterPageFile="~/pages/admin/students.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="EduErp.pages.admin.students1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
            <!-- Mobile Navigation Toggle -->
            <button class="mobile-nav-toggle d-md-none" type="button">
                <i class="fas fa-bars"></i>
    </button>

            <!-- Sidebar Overlay -->
            <div class="sidebar-overlay">
    </div>
    <div class="container-fluid">
        <div class="row">
                    <!-- Sidebar -->
                    <div class="col-md-3 col-lg-2 px-0">
                        <div class="sidebar bg-white border-end p-3">
                            <div class="text-center mb-4">
                                <h4 class="text-primary fw-bold">College ERP</h4>
                                <p class="text-muted small">
                                    Student Management</p>
                            </div>
                            <nav class="nav flex-column">
                                <a class="nav-link text-dark" href="dashboard.aspx"><i class="fas fa-home me-2 text-primary"></i>Dashboard </a><a class="nav-link active bg-primary text-white rounded" href="students.aspx"><i class="fas fa-users me-2"></i>Students </a><a class="nav-link text-dark" href="faculty.aspx"><i class="fas fa-chalkboard-teacher me-2 text-primary"></i>Faculty </a><a class="nav-link text-dark" href="courses.aspx"><i class="fas fa-book me-2 text-primary"></i>Courses </a><a class="nav-link text-dark" href="timetable.aspx"><i class="fas fa-calendar me-2 text-primary"></i>Timetable </a><a class="nav-link text-dark" href="attendance.aspx"><i class="fas fa-calendar-check me-2 text-primary"></i>Attendance </a><a class="nav-link text-dark" href="exams.aspx"><i class="fas fa-file-alt me-2 text-primary"></i>Exams & Results </a><a class="nav-link text-dark" href="fees.aspx"><i class="fas fa-money-bill-wave me-2 text-primary"></i>Fees </a><a class="nav-link text-dark" href="notices.aspx">
                                <i class="fas fa-bullhorn me-2 text-primary"></i>Notice Board </a><a class="nav-link text-dark" href="reports.aspx"><i class="fas fa-chart-bar me-2 text-primary"></i>Reports </a><a class="nav-link text-dark" href="settings.aspx"><i class="fas fa-cog me-2 text-primary"></i>Settings </a><a class="nav-link text-dark" href="profile.aspx"><i class="fas fa-user me-2 text-primary"></i>Profile </a>
                            </nav>
                        </div>
            </div>

                    <!-- Main Content -->
                    <div class="col-md-9 col-lg-10">
                        <div class="main-content p-4">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <h2 class="text-primary fw-bold">Student Management</h2>
                                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addStudentModal">
                                    <i class="fas fa-plus me-2"></i>Add Student
                                </button>
                            </div>

                            <!-- Student Search and Filter -->
                            <div class="card shadow-sm mb-4">
                                <div class="card-body">
                                    <div class="row g-3">
                                        <div class="col-md-4">
                                            <input type="text" class="form-control" placeholder="Search students...">
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-select">
                                                <option>All Departments</option>
                                                <option>Computer Science</option>
                                                <option>Mathematics</option>
                                                <option>Physics</option>
                                                <option>Chemistry</option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-select">
                                                <option>All Years</option>
                                                <option>1st Year</option>
                                                <option>2nd Year</option>
                                                <option>3rd Year</option>
                                                <option>4th Year</option>
                                            </select>
                                        </div>
                                        <div class="col-md-2">
                                            <button class="btn btn-outline-primary w-100">
                                                <i class="fas fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Students Table -->
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead class="table-light">
                                                <tr>
                                                    <th>Student ID</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Department</th>
                                                    <th>Year</th>
                                                    <th>Status</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>S001</td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <img src="https://via.placeholder.com/40" class="rounded-circle me-2" alt="Student">
                                                            <div>
                                                                <div class="fw-bold">
                                                                    John Doe</div>
                                                                <small class="text-muted">Roll: 2021CS001</small>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>john.doe@college.edu</td>
                                                    <td>Computer Science</td>
                                                    <td>3rd Year</td>
                                                    <td><span class="badge bg-success">Active</span></td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <button class="btn btn-outline-primary" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </button>
                                                            <button class="btn btn-outline-warning" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </button>
                                                            <button class="btn btn-outline-danger" title="Delete">
                                                                <i class="fas fa-trash"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>S002</td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <img src="https://via.placeholder.com/40" class="rounded-circle me-2" alt="Student">
                                                            <div>
                                                                <div class="fw-bold">
                                                                    Jane Smith</div>
                                                                <small class="text-muted">Roll: 2021MT002</small>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>jane.smith@college.edu</td>
                                                    <td>Mathematics</td>
                                                    <td>3rd Year</td>
                                                    <td><span class="badge bg-success">Active</span></td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <button class="btn btn-outline-primary" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </button>
                                                            <button class="btn btn-outline-warning" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </button>
                                                            <button class="btn btn-outline-danger" title="Delete">
                                                                <i class="fas fa-trash"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>S003</td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <img src="https://via.placeholder.com/40" class="rounded-circle me-2" alt="Student">
                                                            <div>
                                                                <div class="fw-bold">
                                                                    Mike Johnson</div>
                                                                <small class="text-muted">Roll: 2022CS003</small>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>mike.johnson@college.edu</td>
                                                    <td>Computer Science</td>
                                                    <td>2nd Year</td>
                                                    <td><span class="badge bg-warning">Suspended</span></td>
                                                    <td>
                                                        <div class="btn-group btn-group-sm">
                                                            <button class="btn btn-outline-primary" title="View">
                                                                <i class="fas fa-eye"></i>
                                                            </button>
                                                            <button class="btn btn-outline-warning" title="Edit">
                                                                <i class="fas fa-edit"></i>
                                                            </button>
                                                            <button class="btn btn-outline-danger" title="Delete">
                                                                <i class="fas fa-trash"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <!-- Pagination -->
                                    <nav class="mt-4">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1">Previous</a> </li>
                                            <li class="page-item active"><a class="page-link" href="#">1</a> </li>
                                            <li class="page-item"><a class="page-link" href="#">2</a> </li>
                                            <li class="page-item"><a class="page-link" href="#">3</a> </li>
                                            <li class="page-item"><a class="page-link" href="#">Next</a> </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
    </div>

            <!-- Add Student Modal -->
            <div class="modal fade" id="addStudentModal" tabindex="-1">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add New Student</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal">
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        First Name</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        Last Name</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        Email</label>
                                        <input type="email" class="form-control" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        Phone</label>
                                        <input type="tel" class="form-control" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        Department</label>
                                        <select class="form-select" required>
                                            <option value="">Choose...</option>
                                            <option>Computer Science</option>
                                            <option>Mathematics</option>
                                            <option>Physics</option>
                                            <option>Chemistry</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">
                                        Year</label>
                                        <select class="form-select" required>
                                            <option value="">Choose...</option>
                                            <option>1st Year</option>
                                            <option>2nd Year</option>
                                            <option>3rd Year</option>
                                            <option>4th Year</option>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">
                                        Address</label>
                                        <textarea class="form-control" rows="3"></textarea>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                Cancel
                            </button>
                            <button type="button" class="btn btn-primary">
                                Add Student
                            </button>
                        </div>
                    </div>
                </div>
    </div>
</asp:Content>



