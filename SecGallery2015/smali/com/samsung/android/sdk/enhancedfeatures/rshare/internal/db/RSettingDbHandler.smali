.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
.super Ljava/lang/Object;
.source "RSettingDbHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;
    }
.end annotation


# static fields
.field private static final COLUMN_VALUE:[Ljava/lang/String;

.field private static final NULL_SETTING:Landroid/os/Bundle;

.field private static final TAG:Ljava/lang/String;

.field private static final TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

.field private static sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    const-string/jumbo v1, "global"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->COLUMN_VALUE:[Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    const-string/jumbo v0, "_dummy"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    return-object v0
.end method

.method private static bundleForPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkWritePermissions(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "global"

    iget-object v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Permission denial: writing to secure settings requires %1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;-><init>(Landroid/net/Uri;)V

    const-string/jumbo v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->checkWritePermissions(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;)V

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->cacheForTable(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    move-result-object v1

    const-string/jumbo v7, "value"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->isRedundantSetValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->populate(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Landroid/content/ContentValues;)V

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sendNotify(Landroid/net/Uri;)V

    move-object v6, p1

    goto :goto_0
.end method

.method private lookupValue(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12

    if-nez p2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cache is null: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    if-eqz v11, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TOO_LARGE_TO_CACHE_MARKER:Landroid/os/Bundle;

    if-eq v11, v0, :cond_3

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->fullyMatchesDisk()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    monitor-exit p2

    goto :goto_0

    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->COLUMN_VALUE:[Ljava/lang/String;

    const-string/jumbo v3, "name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->NULL_SETTING:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "settings lookup error"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 6

    const-string/jumbo v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notification suppressed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cacheForTable(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;
    .locals 1

    const-string/jumbo v0, "global"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v3, "GET_global"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "global"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->sGlobalCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;

    invoke-direct {p0, v2, v3, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->lookupValue(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler$SettingsCache;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    if-nez p3, :cond_1

    move-object v0, v2

    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Permission denial: writing to settings requires %1$s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v3, "value"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "PUT_global"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call_put(global:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call() with invalid method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RSettingDbHandler;->insertForUser(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
