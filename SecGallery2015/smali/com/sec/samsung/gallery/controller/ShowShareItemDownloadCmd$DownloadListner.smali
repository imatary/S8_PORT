.class Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;
.super Ljava/lang/Object;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadListner"
.end annotation


# static fields
.field private static final CMH_CHECK_DELAY_TIME_MS:I = 0x3e8

.field private static final CMH_CHECK_REPEAT_COUNT:I = 0x2


# instance fields
.field private mCurrentSize:J

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->mCurrentSize:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->updateCMHTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateCMHTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v14, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v14, v3, :cond_0

    const/4 v10, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_data =?"

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "_data"

    aput-object v5, v4, v3

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "ShowShareItmDwnloadCmd"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    if-gtz v15, :cond_2

    const-string/jumbo v3, "ShowShareItmDwnloadCmd"

    const-string/jumbo v5, "download file is not exist in the CMH File DB!!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v3, "ShowShareItmDwnloadCmd"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1700(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1700(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-nez v13, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "original_fileid"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_id"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " ="

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v13, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->mFileId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v11, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhNotify(Landroid/content/Context;Z)V

    const/4 v3, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;->onCompleted(Z)V

    :cond_0
    return-void
.end method

.method public onDownloadStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getShareId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # setter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J
    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$102(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;J)J

    return-void
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 2

    const-string/jumbo v0, "ShowShareItmDwnloadCmd"

    const-string/jumbo v1, "onError occurred while Original Download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Canceled"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0170

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onFileDownloaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ShowShareItmDwnloadCmd"

    const-string/jumbo v5, "onFileDownloaded"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # operator++ for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1308(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-interface {v4, v6, v7, v8}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;->onProgress(JZ)V

    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DownloadOriginal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$1300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->getOverallProgressBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->this$0:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    move-result-object v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->mCurrentSize:J

    sub-long v4, v0, v4

    const/4 v3, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;->onProgress(JZ)V

    :cond_0
    iget-wide v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->mCurrentSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->mCurrentSize:J

    :cond_1
    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;->mCurrentSize:J

    :cond_2
    return-void
.end method
