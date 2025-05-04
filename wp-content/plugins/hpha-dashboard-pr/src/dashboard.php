<?php

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly.
}

// Hook to add admin menu
add_action('admin_menu', 'hpha_dashboard_pr_menu');

function hpha_dashboard_pr_menu() {
    add_menu_page(
        'HPHA Dashboard PR', // Page title
        'HPHA Dashboard',    // Menu title
        'manage_options',    // Capability
        'hpha-dashboard-pr', // Menu slug
        'hpha_dashboard_pr_page', // Function to display the page
        'dashicons-admin-generic', // Icon
        2 // Position
    );
}

function hpha_dashboard_pr_page() {
    ?>
    <div class="wrap">
        <h1>HPHA Dashboard PR</h1>
        <p>Welcome to the HPHA Dashboard PR plugin!</p>
        <!-- Add your dashboard content here -->
    </div>
    <?php
}
