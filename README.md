# PHP Dev Environment 🚀

## About  
`php-dev-env` is a **Docker-based development environment** for any PHP application. It includes **Nginx, PHP-FPM, MariaDB, and Xdebug** to streamline development and debugging.  

## Features  
✅ **PHP-FPM**: Runs PHP efficiently and supports any PHP framework (Laravel, Symfony, WordPress, etc.)  
✅ **Nginx**: Serves your application with a production-like configuration  
✅ **MariaDB**: A robust and lightweight MySQL-compatible database  
✅ **Xdebug**: Pre-configured for debugging with VSCode  
✅ **Persistent Storage**: Keeps database and application files intact  
✅ **Host Access**: Allows PHP-FPM/Xdebug to communicate with the host machine  

## How to Use 🚀
**1️⃣ Clone the Project**: 
```
git clone https://github.com/RayanFar/php-dev-env.git
cd php-dev-env
```

**2️⃣ Make run.sh Executable**:
```
chmod +x run.sh
```

**3️⃣ Run the Script and Wait for Setup to Complete**:
```
./run.sh
```

**4️⃣ Copy Your PHP Project to app_data**:
Place your PHP application inside the app_data directory. This will be served by Nginx.

**5️⃣ Open in Browser**:
Go to http://localhost to see your project running. 🚀

## How to use xdebug
- 1️⃣ In VSCode, go to the "Run and Debug" section and select "Listen for Xdebug".
- 2️⃣ Set breakpoints in your index.php or any other file.
- 3️⃣ Reload the page in your web browser (http://localhost) to trigger the debugger.

✅ Now VSCode should stop at your breakpoints, allowing you to debug your PHP application! 🚀



