.class public Lcom/sec/android/gallery3d/eventshare/utils/EventDBInterface;
.super Ljava/lang/Object;
.source "EventDBInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventDBInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteColumnWithId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "event_share_operation"

    const-string/jumbo v4, "event_id= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->revertChannel(Landroid/content/Context;ILjava/lang/String;)V

    const-string/jumbo v3, "ugci"

    const-string/jumbo v4, ""

    invoke-static {p0, p1, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelStringColumn(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "is_shared"

    invoke-static {p0, p1, v3, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    const-string/jumbo v3, "owner"

    invoke-static {p0, p1, v3, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "EventDBInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteColumnWithId is fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateItem(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    invoke-static {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "event_ugci"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "event_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->update(ILandroid/content/ContentValues;)V

    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    return v2
.end method
