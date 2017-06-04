.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;
.super Ljava/lang/Object;
.source "RQuotaDbHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;
    }
.end annotation


# static fields
.field private static final COLUMN_QUOTA:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sURLMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sURLMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.android.coreapps.rshare"

    const-string/jumbo v2, "quota"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "content://com.samsung.android.coreapps.rshare/quota"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "byte_usage"

    aput-object v2, v0, v1

    const-string/jumbo v1, "timestamp"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "quota"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "last_reset_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "uploaded_file_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->COLUMN_QUOTA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDbHelper:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkWritePermissions()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mContext:Landroid/content/Context;

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

.method public static open(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;-><init>(Landroid/content/Context;)V

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
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

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
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

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

.method private updateQuota(Landroid/content/ContentValues;)I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->checkWritePermissions()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "quota"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->populate(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;Landroid/content/ContentValues;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sendNotify(Landroid/net/Uri;)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "db is getting deleted"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "quota"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public get()Landroid/os/Bundle;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "get quota"

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sQuotaCache is null"

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->get()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_2

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "quota"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->COLUMN_QUOTA:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->put(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v11, v12

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "settings lookup error"

    invoke-static {v0, v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v11, v12

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "wrong Uri"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "quota"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->sQuotaCache:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler$SettingsCache;->invalidate()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Landroid/os/Bundle;)V
    .locals 14

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnableSettingPermissionCheck()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/SecurityException;

    const-string/jumbo v10, "Permission denial: writing to settings requires %1$s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "com.sec.orca.remoteshare.permission.WRITE_MEDIA"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const-string/jumbo v9, "byte_usage"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v9, "quota"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v9, "timestamp"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v9, "last_reset_time"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "uploaded_file_count"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-eqz v9, :cond_1

    const-string/jumbo v9, "byte_usage"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-wide/16 v10, -0x1

    cmp-long v9, v2, v10

    if-eqz v9, :cond_2

    const-string/jumbo v9, "quota"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-eqz v9, :cond_3

    const-string/jumbo v9, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz v0, :cond_4

    const-string/jumbo v9, "last_reset_time"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v9, "uploaded_file_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "put quota: usage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " quota = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " timestamp : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " lastresettime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uploadedFileCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog$Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->updateQuota(Landroid/content/ContentValues;)I

    return-void
.end method
