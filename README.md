# S3BackupSimple

"What is the simplest thing that could possibly work"

Simple backup script to run commands and send the output to Amazon S3
storage.

    ./s3backup -bucket example-bucket -path backups -name mybackup.tar -count 3 tar -C /some/path cp .

Creates /backups/mybackup.tar.1 in AWS bucket "example-bucket", using
the default boto profile.  As you run it each day it will rotate up to
COUNT versions, then overwrite.

It uses local disk to store the file, then uploads to S3.


