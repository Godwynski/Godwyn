<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Bar</title>
    <!-- Link to Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Navigation Bar -->
    <nav class="bg-blue-500 text-white shadow-md">
        <div class="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
            <!-- Logo or brand name -->
            <a href="#" class="text-xl font-bold hover:text-gray-200">Sheeesh</a>

            <!-- Navigation links -->
            <ul class="flex space-x-6 text-lg">
                <li>
                    <a href="#" class="hover:text-gray-300 transition duration-300">Home</a>
                </li>
                <li>
                    <a href="#" class="hover:text-gray-300 transition duration-300">Account</a>
                </li>
                <li>
                    <a href="#" class="hover:text-gray-300 transition duration-300">Settings</a>
                </li>
            </ul>
        </div>
    </nav>

</body>
</html>
