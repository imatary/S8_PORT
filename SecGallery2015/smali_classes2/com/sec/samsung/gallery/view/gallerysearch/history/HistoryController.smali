.class public Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;
.super Ljava/lang/Object;
.source "HistoryController.java"


# static fields
.field private static final DAY_MSEC:J = 0x5265c00L

.field private static final LIMIT_HISTORY_COUNT:I = 0x32

.field private static final MONTH_MSEC:J = 0x9a7ec800L

.field private static final TAG:Ljava/lang/String; = "HistoryController"

.field private static sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;


# instance fields
.field private mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    return-void
.end method

.method private deletePastHistory()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v6, 0x9a7ec800L

    sub-long v4, v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "date_added < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v7, "search_history"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v6, "HistoryController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deletePastHistory() delelted count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getHistoryItemList(Z)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const-string/jumbo v7, "date_added DESC"

    const/4 v8, 0x0

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deletePastHistory()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "search_history"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "date_added"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    move-wide/from16 v0, v16

    invoke-direct {v2, v13, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v8, v8, 0x1

    const/16 v2, 0x31

    if-lt v8, v2, :cond_3

    move-object v11, v12

    :cond_2
    :goto_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HistoryController: getHistoryItemList() : elapsed time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v11

    :cond_3
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    move-object v11, v12

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_2
    :try_start_3
    const-string/jumbo v2, "HistoryController"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HistoryController: getHistoryItemList() : elapsed time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v3, "Gallery_Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HistoryController: getHistoryItemList() : elapsed time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :catchall_1
    move-exception v2

    move-object v11, v12

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v11, v12

    goto :goto_2
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteAllHistory()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "search_history"

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteHistory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->deleteHistory(Ljava/lang/String;)V

    return-void
.end method

.method public getHistoryItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public insertHistory(Landroid/content/ContentValues;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "search_history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
