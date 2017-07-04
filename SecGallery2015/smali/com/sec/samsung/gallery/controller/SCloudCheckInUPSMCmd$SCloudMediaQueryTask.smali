.class Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;
.super Landroid/os/AsyncTask;
.source "SCloudCheckInUPSMCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudMediaQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->access$200()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "is_cloud = 2 AND ( file_status = 0 OR file_status = 4)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "SCloudCheckInUPSMCmd"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "SCloudCheckInUPSMCmd"

    const-string/jumbo v1, "query failed. cursor is null"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "SCloudCheckInUPSMCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0384

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudCheckInUPSMCmd$SCloudMediaQueryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
