.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "UploadTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string/jumbo v18, "paused, no need to update progressReal"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p3

    check-cast v10, Landroid/os/Bundle;

    const-string/jumbo v18, "extra_content_id"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-wide/from16 v18, v0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v20

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-wide/from16 v18, v0

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    :cond_2
    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPercentage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v15, :cond_0

    const/4 v11, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPercentage:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getMediaData()Landroid/os/Bundle;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v18, "extra_progress_file_name"

    iget-object v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "extra_progress_byte"

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v18, "extra_progress_total_file_length"

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v18, "extra_progress_media_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v18, "extra_media_size"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v22

    add-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v19

    sub-int v18, v18, v19

    add-int/lit8 v9, v18, 0x1

    const-string/jumbo v18, "extra_progress_file_count"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v18, "extra_progress_total_file_count"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    new-instance v18, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;)V

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    sget-object v18, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->CONTENT_URI:Landroid/net/Uri;

    iget v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v18, "status"

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v18, "progress"

    iget-wide v0, v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v18, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string/jumbo v18, "media_progress"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v18

    const/16 v19, 0x17

    const/16 v20, 0x0

    const-string/jumbo v21, "com.samsung.android.coreapps.rshare"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_3

    invoke-static {v13, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getShareProgress(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Progress New "

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getCurrentProgressFileName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x28

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getCurrentProgressBytes()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getCurrentProgressTotalBytes()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ") "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "percent ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ") Total progressReal bytes = ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getOverallProgressBytes()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->getOverallTotalBytes()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 44

    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Http status code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v30, -0x1

    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "Error but VolleyError is null"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v4, v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v5, 0x2716

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "consume cancel error, this is just for release thread"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v5, 0x2af9

    if-ne v4, v5, :cond_3

    const/16 v30, -0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "Network timeout occurs."

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v4, v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v5, 0x2afa

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "NoConnectionError but it has already been paused"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v14, Ljava/lang/Throwable;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v14, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v30, -0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/16 v5, 0x12c

    const-string/jumbo v9, "No network connection"

    move/from16 v0, v30

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v4, v5, v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;IILjava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v5, 0x2ee0

    if-ne v4, v5, :cond_8

    const/16 v30, -0xb

    :cond_6
    :goto_1
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v40, 0x2ee1

    cmp-long v4, v4, v40

    if-nez v4, :cond_9

    const/16 v30, -0x3

    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HTTP ERROR ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/16 v5, 0x191

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    move/from16 v0, v30

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v4, v5, v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v5, 0x2af8

    if-ne v4, v5, :cond_6

    const/16 v30, -0xc

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v40, 0x0

    cmp-long v4, v4, v40

    if-gez v4, :cond_7

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v30, v0

    goto :goto_2

    :cond_a
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v36, p2

    check-cast v36, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v6, p4

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v4, "extra_content_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v4, "extra_upload_key"

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getMuploadKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v4, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getOutboxContentUri(J)Landroid/net/Uri;

    move-result-object v7

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "upload_key"

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getMuploadKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "begin"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "progress_real"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "progress"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    move-object/from16 v29, p2

    check-cast v29, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v6, p4

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v4, "extra_content_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v4, "extra_file_length"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media progressReal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + fileLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    add-long v40, v40, v22

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # operator++ for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2108(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, v19

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->postProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V
    invoke-static {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    :cond_b
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    move-object/from16 v3, v28

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string/jumbo v4, "public_url"

    move-object/from16 v0, v28

    invoke-virtual {v11, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "status"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    if-eqz v19, :cond_c

    const-string/jumbo v4, "progress_real"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "progress"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_c
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v35

    const-string/jumbo v4, "complete_count"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "media_progress"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "media_progress_real"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v4

    const/4 v5, 0x5

    const-string/jumbo v9, "com.samsung.android.coreapps.rshare"

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v6, v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "already paused token_next_content"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v26, p2

    check-cast v26, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;

    move-object/from16 v6, p4

    check-cast v6, Landroid/os/Bundle;

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->tag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->tag:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->mupload_key:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v34

    const-string/jumbo v5, "upload_key"

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getMuploadKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v5, "begin"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v5, "status"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v5, "progress_real"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v5, "progress"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {v34 .. v34}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v4

    const/16 v5, 0x1a

    const-string/jumbo v9, "com.samsung.android.coreapps.rshare"

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v6, v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v15, p2

    check-cast v15, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;

    move-object/from16 v6, p4

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v4, "extra_content_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v4, "extra_chunk_size"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    iget-object v4, v15, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->chunk_number:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-nez v18, :cond_10

    const-string/jumbo v4, "contentId for this chunk response is null"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v19

    if-nez v19, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ContentToSend for cid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is not found in sending queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, v19

    iget v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    add-long v4, v4, v16

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    add-long v40, v40, v16

    move-wide/from16 v0, v40

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "chunk_index= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "content_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string/jumbo v4, "progress_real"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "chunk_complete_count"

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    sub-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    const-string/jumbo v4, "media_progress_real"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnabledAutoEndMode()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->type:Ljava/lang/String;

    const-string/jumbo v5, "mupload"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "auto end mode"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    new-instance v29, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;

    invoke-direct/range {v29 .. v29}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;-><init>()V

    iget-object v4, v15, Lcom/samsung/android/sdk/ssf/file/io/MultiPart;->public_url:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->public_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "extra_content_id"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    move-object/from16 v0, v19

    iget v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    if-nez v4, :cond_13

    const-string/jumbo v4, "extra_upload_done"

    const/4 v5, 0x1

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v4

    const/4 v5, 0x4

    const-string/jumbo v9, "com.samsung.android.coreapps.rshare"

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v6, v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, v19

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->postProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V
    invoke-static {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v29, p2

    check-cast v29, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;

    move-object/from16 v6, p4

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v4, "extra_content_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v19

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v28

    if-nez v19, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cts is null, contentId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # operator++ for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2108(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "End Mupload, mi="

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " comCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " realCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v40

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " topr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v42

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " chcnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " chsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const-string/jumbo v4, "public_url"

    move-object/from16 v0, v28

    invoke-virtual {v11, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "status"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "progress_real"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "progress"

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v4, "chunk_complete_count"

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v0, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string/jumbo v4, "complete_count"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v4

    const/4 v5, 0x5

    const-string/jumbo v9, "com.samsung.android.coreapps.rshare"

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v6, v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x15 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method
