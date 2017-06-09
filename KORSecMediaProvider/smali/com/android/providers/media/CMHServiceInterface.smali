.class public Lcom/android/providers/media/CMHServiceInterface;
.super Ljava/lang/Object;
.source "CMHServiceInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/CMHServiceInterface$1;
    }
.end annotation


# static fields
.field private static final CMH_ACTION_INTENT:Ljava/lang/String; = "com.samsung.cmh.action.CMH_EXECUTE"

.field private static final CMH_BULK_INTENT:Ljava/lang/String; = "isbulk"

.field private static final CMH_DATA_BUNDLE:Ljava/lang/String; = "data"

.field private static final CMH_INTENT_OPERATION:Ljava/lang/String; = "operation"

.field private static final CMH_INTENT_ORIGIN:Ljava/lang/String; = "origin"

.field private static final CMH_PACKAGE:Ljava/lang/String; = "com.samsung.cmh"

.field private static final CMH_PERMISSION:Ljava/lang/String; = "com.samsung.cmh.START"

.field private static final CMH_SERVICE:Ljava/lang/String; = "com.samsung.cmh.service.CMHService"

.field private static final CMH_SYNC_INTENT:Ljava/lang/String; = "com.samsung.cmh.action.CMH_SYNC"

.field private static final CMH_URI:Ljava/lang/String; = "uri"

.field private static final DELETE_OPERATION:I = 0x1

.field private static final FILES:I = 0x2bc

.field private static final FILES_ID:I = 0x2bd

.field private static final ID_BATCH_SIZE:I = 0x65

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_THUMBNAILS:I = 0x3

.field private static final IMAGES_THUMBNAILS_ID:I = 0x4

.field private static final INSERT_OPERATION:I = 0x0

.field private static final RESTORE:Ljava/lang/String; = "restore"

.field private static final SDCARD_ID:Ljava/lang/String; = "sdcard_id"

.field private static final STARTPATH:Ljava/lang/String; = "startpath"

.field private static final STORAGE_ID:Ljava/lang/String; = "storage_id"

.field private static final STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_OPERATION:I = 0x2

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VIDEO_THUMBNAILS:I = 0xca

.field private static final VIDEO_THUMBNAILS_ID:I = 0xcb

.field private static mCMH:Ljava/lang/Boolean;

.field private static final mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final mServiceConnection:Landroid/content/ServiceConnection;

.field private static final mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/providers/media/CMHServiceInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lcom/android/providers/media/CMHServiceInterface$1;

    invoke-direct {v0}, Lcom/android/providers/media/CMHServiceInterface$1;-><init>()V

    sput-object v0, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized bindCMHIfNeeded(Landroid/content/Context;)V
    .locals 4

    const-class v2, Lcom/android/providers/media/CMHServiceInterface;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mbCMHBinded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "binding to CMH"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cmh.action.CMH_EXECUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.cmh"

    const-string/jumbo v3, "com.samsung.cmh.service.CMHService"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->scheduleUnbind(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static deleteImagesCMH(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "bucket_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Album delete case,sending bucket_id to CMH for deletion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v4, "data"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v4, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "where"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_4

    const-string/jumbo v4, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Single delete case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v4, "data"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v4, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "where"

    const-string/jumbo v5, "media_id = ? AND device_id = 1"

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v4, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v15

    sget-object v4, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "[CMH] Exception in deleteImagesCMH"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v4, "where"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "get ids to delete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Lcom/android/providers/media/CMHServiceInterface;->getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object p5

    :cond_5
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_0

    sget-object v4, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Deleting for ids"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    move/from16 v20, v12

    add-int/lit8 v4, v12, 0x65

    move/from16 v0, v19

    if-gt v4, v0, :cond_6

    add-int/lit8 v18, v12, 0x65

    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v21, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v21, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = ? "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string/jumbo v4, "external"

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move/from16 v18, v19

    goto :goto_3

    :cond_7
    const-string/jumbo v4, " OR uri = ? "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_9
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v4, "data"

    invoke-virtual {v14, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v4, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "where"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "whereargs"

    move-object/from16 v0, p4

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x65

    goto/16 :goto_2
.end method

.method private static getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_1
    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/providers/media/CMHServiceInterface;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "files"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "media_type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v0, 0x1

    if-eq v11, v0, :cond_5

    const/4 v0, 0x3

    if-ne v11, v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :cond_7
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v10

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public static getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 5

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.cmh.action.CMH_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.cmh"

    const-string/jumbo v4, "com.samsung.cmh.service.CMHService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "operation"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "origin"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "isbulk"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v3
.end method

.method public static insertImagesCMH(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;Z)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-static {p0, v3, p3}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "contentvalues"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    sget-object v3, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Sending intent to CMH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "[CMH] Exception in insertImagesCMH"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isCMHEnabled(Landroid/content/Context;)Z
    .locals 4

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "com.samsung.cmh"

    invoke-static {v1, p0}, Lcom/android/providers/media/CMHServiceInterface;->isInstalledApplication(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CMH Enabled?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    :cond_2
    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->mCMH:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static isCMHReady(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->bindCMHIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isFeatureDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isFeatureDisabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v2, "persist.dcm.feature.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static isInstalledApplication(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInteger(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method static scheduleUnbind(Landroid/content/Context;)V
    .locals 7

    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->mScheduledThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/android/providers/media/CMHServiceInterface$2;

    invoke-direct {v3, p0}, Lcom/android/providers/media/CMHServiceInterface$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->mScheduledFutureReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_0
.end method

.method public static sendSyncIntent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cmh.action.CMH_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "restore"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "storage_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "startpath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "storage_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sdcard_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cmh.START"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v1, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateImagesCMH(Landroid/content/Context;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 21

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/providers/media/CMHServiceInterface;->isCMHReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_3

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "_data"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Single updateImagesCMH case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v2, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contentvalues"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "where"

    const-string/jumbo v3, "media_id = ? AND device_id = 1"

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "whereargs"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "where"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v12

    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[CMH] Exception in updateImagesCMH"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/providers/media/CMHServiceInterface;->getIds(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    const/4 v10, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v10, v0, :cond_1

    move/from16 v18, v10

    add-int/lit8 v2, v10, 0x65

    move/from16 v0, v17

    if-gt v2, v0, :cond_4

    add-int/lit8 v15, v10, 0x65

    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 p5, v0

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uri = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string/jumbo v2, "external"

    int-to-long v4, v13

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    move/from16 v15, v17

    goto :goto_3

    :cond_5
    const-string/jumbo v2, " OR uri = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_7
    sget-object v2, Lcom/android/providers/media/CMHServiceInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Sending intent to CMH to update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/providers/media/CMHServiceInterface;->getIntentForCMH(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v19

    const-string/jumbo v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v2, "uri"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contentvalues"

    move-object/from16 v0, p3

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "where"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "whereargs"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v10, v10, 0x65

    goto/16 :goto_2
.end method

.method public static updateLocation(Landroid/content/Context;Landroid/content/ContentValues;DD)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.cmh/files"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "latitude=? AND longitude=? AND addr is null AND langagecode is null"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
