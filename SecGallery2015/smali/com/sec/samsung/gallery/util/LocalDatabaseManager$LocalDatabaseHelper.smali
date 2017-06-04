.class Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDatabaseHelper"
.end annotation


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "local.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma table_info("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    return v2

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method private upgradeDatabaseToVersion10(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS album_new_display_table (_id INTEGER, bucket_id INTEGER UNIQUE, _data TEXT, bucket_display_name TEXT, album_more INTEGER, album_extra REAL, album_sort_type INTEGER, album_sort_order INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Error executing SQL "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion11(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS fake_album_display_info_table (_id INTEGER, bucketid_order TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Error executing SQL "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion5(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "images_event_album"

    const-string/jumbo v2, "suggested_event"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion5 images_event_album.suggested_event Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "video_event_album"

    const-string/jumbo v2, "suggested_event"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion5 video_event_album.suggested_event Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE images_event_album ADD COLUMN suggested_event INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "LocalDatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string/jumbo v1, "ALTER TABLE video_event_album ADD COLUMN suggested_event INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion6(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "images_event_album"

    const-string/jumbo v2, "is_drm"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion6 images_event_album.is_drm Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "video_event_album"

    const-string/jumbo v2, "is_drm"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion6 video_event_album.is_drm Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE images_event_album ADD COLUMN is_drm INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "LocalDatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string/jumbo v1, "ALTER TABLE video_event_album ADD COLUMN is_drm INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion7(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "video_event_album"

    const-string/jumbo v2, "video_view_mode"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion7 video_event_album.video_view_mode Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE video_event_album ADD COLUMN video_view_mode INTEGER DEFAULT -1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "LocalDatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion8(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "images_event_album"

    const-string/jumbo v2, "sef_file_sub_type"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion8 images_event_album.sef_file_sub_type Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE images_event_album ADD COLUMN sef_file_sub_type INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "LocalDatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeDatabaseToVersion9(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "video_event_album"

    const-string/jumbo v2, "is_360_video"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "upgradeDatabaseToVersion8 video_event_album.is_360_video Column Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v1, "ALTER TABLE video_event_album ADD COLUMN is_360_video INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "LocalDatabaseManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string/jumbo v0, "LocalDatabaseManager"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS images_hidden_album (_id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT UNIQUE, orientation INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, group_id INTEGER, spherical_mosaic INTEGER, sef_file_type INTEGER, album_name TEXT, hidden_album TEXT, source_album TEXT, faces_rect BLOB );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS video_hidden_album (_id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT UNIQUE, duration INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, album_name TEXT, hidden_album TEXT, source_album TEXT, resolution TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS hidden_album_info (bucket_id INTEGER UNIQUE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS album_display_info_table (_id INTEGER, bucketid_order TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS album_new_display_table (_id INTEGER, bucket_id INTEGER UNIQUE, _data TEXT, bucket_display_name TEXT, album_more INTEGER, album_extra REAL, album_sort_type INTEGER, album_sort_order INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS suggest_event_info (_id INTEGER, latitude REAL, longitude REAL, _data TEXT UNIQUE, datetaken INTEGER, locality TEXT, type INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS images_event_album (pkey INTEGER UNIQUE, _id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT, orientation INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, group_id INTEGER, spherical_mosaic INTEGER, sef_file_type INTEGER, sef_file_sub_type INTEGER, bucket_display_name TEXT, suggestion INTEGER, suggested_event INTEGER, album_create_time INTEGER, is_favorite INTEGER, highlight_video_status INTEGER DEFAULT 0, is_drm INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS video_event_album (pkey INTEGER UNIQUE, _id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT, duration INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, resolution TEXT, is_360_video INTEGER, bucket_display_name TEXT, suggestion INTEGER, suggested_event INTEGER, album_create_time INTEGER, recording_mode INTEGER, is_favorite INTEGER, highlight_video_status INTEGER DEFAULT 0, is_drm INTEGER, video_view_mode INTEGER DEFAULT -1);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS search_history (title TEXT UNIQUE NOT NULL, date_added INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS album_photo_cover (bucket_id INTEGER UNIQUE, item_path TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS burstshot_download (group_id INTEGER UNIQUE, _size INTEGER, item_path TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS event_share_operation (event_id INTEGER UNIQUE, event_ugci TEXT, event_name TEXT, event_type INTEGER, event_state TEXT, event_request INTEGER, event_request_state INTEGER, event_running_type INTEGER, event_share_id INTEGER, event_extra_object OBJECT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CREATE TABLE IF NOT EXISTS fake_album_display_info_table (_id INTEGER, bucketid_order TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string/jumbo v1, "LocalDatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDowngrade database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "DROP TABLE IF EXISTS images_hidden_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS video_hidden_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS hidden_album_info"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_display_info_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_new_display_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS suggest_event_info"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS images_event_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS video_event_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS search_history"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_photo_cover"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS burstshot_download"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS event_share_operation"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS fake_album_display_info_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Error executing SQL "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string/jumbo v1, "LocalDatabaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :cond_0
    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "DROP TABLE IF EXISTS images_hidden_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS video_hidden_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS hidden_album_info"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_display_info_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_new_display_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS suggest_event_info"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS images_event_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS video_event_album"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS search_history"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS album_photo_cover"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS burstshot_download"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS event_share_operation"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "DROP TABLE IF EXISTS fake_album_display_info_table"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x4

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion5(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_1
    const/4 v1, 0x5

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion6(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_2
    const/4 v1, 0x6

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion7(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_3
    const/4 v1, 0x7

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion8(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_4
    const/16 v1, 0x8

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion9(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_5
    const/16 v1, 0x9

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion10(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_6
    const/16 v1, 0xa

    if-le p3, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->upgradeDatabaseToVersion11(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    :pswitch_7
    const/16 v1, 0xb

    if-gt p3, v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LocalDatabaseManager"

    const-string/jumbo v2, "Error executing SQL "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
