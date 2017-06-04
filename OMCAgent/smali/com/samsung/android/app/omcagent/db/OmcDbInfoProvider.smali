.class public Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;
.super Landroid/content/ContentProvider;
.source "OmcDbInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;,
        Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$AvailableMandatoryAppTitle;,
        Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$AvailableTitleIconTable;,
        Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$AppTitleIconTable;
    }
.end annotation


# static fields
.field private static final APP_ITEM_TABLE:Ljava/lang/String; = "_id INTEGER PRIMARY KEY,package TEXT,type INTEGER,state INTEGER DEFAULT 0,mode INTEGER,network_charge INTEGER,network_prefer INTEGER,operator TEXT,title TEXT,description TEXT,versioncode INTEGER,versionname TEXT,signature TEXT,icon_drawable BLOB,icon_url TEXT,content_url TEXT,content_size INTEGER,result INTEGER"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.omcprovider"

.field public static final DB_NAME:Ljava/lang/String; = "omc.db"

.field private static final DB_VERSION:I = 0x1

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private openHelper:Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->openHelper:Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->openHelper:Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.samsung.android.omcprovider"

    const-string v6, "app_title_icon"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.samsung.android.omcprovider"

    const-string v6, "available_title_icon"

    const/4 v7, 0x2

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v5, "com.samsung.android.omcprovider"

    const-string v6, "available_mandatory_app_title"

    const/4 v7, 0x3

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->openHelper:Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->openHelper:Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not implemented yet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    const/4 v1, 0x3

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "package"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "title"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "icon_drawable"

    aput-object v5, v2, v1

    const-string v1, "appItem"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v8

    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v11

    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query. : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/common/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    :try_start_5
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "package"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "title"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "icon_drawable"

    aput-object v5, v2, v1

    const-string v3, "mode = ? OR state in (?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v1, 0xa

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const/16 v5, 0x6e

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const/16 v5, 0x96

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const/16 v5, 0xaa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const/16 v5, 0xbe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const/16 v5, 0x4b

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const/16 v5, 0x190

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "appItem"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_1
    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send list count: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v5, 0x1

    if-lt v1, v5, :cond_3

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "package"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toLauncher : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v9

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query. : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/common/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_3
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, 0x2

    :try_start_b
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "package"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "title"

    aput-object v5, v2, v1

    const-string v3, "type = ? AND mode = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "appItem"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/db/OmcDbInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    monitor-exit v11

    goto/16 :goto_0

    :catch_2
    move-exception v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query. : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/Log;->W(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/common/Log;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
