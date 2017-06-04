.class public Lcom/sec/samsung/gallery/util/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field private static final EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadUtil"

.field private static final downloadReceiver:Landroid/content/BroadcastReceiver;

.field private static final mHandlerDownloadInfo:Landroid/os/Handler;

.field private static final mIDArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRunnableDownloadCheck:Ljava/lang/Runnable;

.field private static smIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->smIsReceiverRegistered:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    new-instance v0, Lcom/sec/samsung/gallery/util/DownloadUtil$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/util/DownloadUtil$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadReceiver:Landroid/content/BroadcastReceiver;

    sput-object v1, Lcom/sec/samsung/gallery/util/DownloadUtil;->mHandlerDownloadInfo:Landroid/os/Handler;

    sput-object v1, Lcom/sec/samsung/gallery/util/DownloadUtil;->mRunnableDownloadCheck:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/util/DownloadUtil;->checkDownloadStatus(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->smIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->mRunnableDownloadCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/DownloadUtil;->mHandlerDownloadInfo:Landroid/os/Handler;

    return-object v0
.end method

.method private static checkDownloadStatus(Landroid/content/Context;J)V
    .locals 13

    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->mHandlerDownloadInfo:Landroid/os/Handler;

    sget-object v11, Lcom/sec/samsung/gallery/util/DownloadUtil;->mRunnableDownloadCheck:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v10, "download"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    new-instance v10, Landroid/app/DownloadManager$Query;

    invoke-direct {v10}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [J

    const/4 v12, 0x0

    aput-wide p1, v11, v12

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "status"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v10, "reason"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v10, "DownloadUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Downloaded an item. state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", reason : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x10

    if-ne v8, v10, :cond_3

    const v9, 0x7f0a0170

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p0, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->mIDArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-boolean v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->smIsReceiverRegistered:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "DownloadUtil"

    const-string/jumbo v11, "unregister download receiver"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v10, 0x0

    sput-boolean v10, Lcom/sec/samsung/gallery/util/DownloadUtil;->smIsReceiverRegistered:Z

    :cond_1
    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/sec/samsung/gallery/util/DownloadUtil;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Download"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-interface {v5, v10}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-void

    :pswitch_1
    const v9, 0x7f0a0171

    goto :goto_0

    :pswitch_2
    const v9, 0x7f0a0172

    goto :goto_0

    :pswitch_3
    const v9, 0x7f0a016d

    goto/16 :goto_0

    :pswitch_4
    const v9, 0x7f0a0174

    goto/16 :goto_0

    :pswitch_5
    const v9, 0x7f0a0173

    goto/16 :goto_0

    :pswitch_6
    const v9, 0x7f0a0175

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0x8

    if-ne v8, v10, :cond_4

    const v10, 0x7f0a0137

    :try_start_2
    invoke-static {p0, v10}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v10

    :cond_4
    const/4 v10, 0x4

    if-ne v8, v10, :cond_5

    packed-switch v7, :pswitch_data_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :pswitch_7
    :try_start_3
    const-string/jumbo v10, "DownloadUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Download cancelled : ItemID- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_5
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catch_0
    move-exception v3

    const-string/jumbo v10, "DownloadUtil"

    const-string/jumbo v11, "download receiver is not registered. no need to unregister receiver"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/samsung/gallery/util/DownloadUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/util/DownloadUtil$2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "DownloadThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
