<?php

$host = 'localhost';
$dbname = 'pet_shop';
$username = 'root';
$password = ' ';

$pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$migrationsDir = 'migrations/';

$files = scandir($migrationsDir);

sort($files);

foreach ($files as $file) {
    if (pathinfo($file, PATHINFO_EXTENSION) != 'sql') {
        continue;
    }

    $sql = file_get_contents($migrationsDir . $file);

    try {
        $pdo->exec($sql);
        echo "Migration executed: $file\n";
    } catch (PDOException $e) {
        echo "Error executing migration $file: " . $e->getMessage() . "\n";
    }
}

echo "All migrations have been executed!\n";

?>
