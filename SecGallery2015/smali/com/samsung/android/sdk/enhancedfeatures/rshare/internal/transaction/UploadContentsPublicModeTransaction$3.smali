.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;
.super Landroid/os/Handler;
.source "UploadContentsPublicModeTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 62

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "### handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mToken:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "already paused token_next_content"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->next()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v55

    if-eqz v55, :cond_12

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v55

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_file_length"

    move-object/from16 v0, v55

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    invoke-virtual {v9, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_upload_size"

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Config;->MULTI_UPLOAD_SIZE:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v56

    move-object/from16 v0, v55

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v50

    move-object/from16 v0, v55

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    cmp-long v2, v2, v56

    if-ltz v2, :cond_3

    const-string/jumbo v2, "content"

    invoke-virtual/range {v50 .. v50}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/io/InputStream;)Ljava/io/InputStream;

    :try_start_0
    const-string/jumbo v2, "file"

    invoke-virtual/range {v50 .. v50}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v49, Ljava/io/File;

    move-object/from16 v0, v55

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->length()J

    move-result-wide v52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", file.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v52

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fileLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v55

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v49}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v58, -0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File not found, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File not found, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v52, v2

    if-gtz v2, :cond_5

    const/16 v58, -0x15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Zero length file, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, v55

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    cmp-long v2, v52, v2

    if-eqz v2, :cond_6

    const/16 v58, -0x15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File has been modified, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, v49

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "Bad request"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string/jumbo v2, "content"

    invoke-virtual/range {v50 .. v50}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_9
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string/jumbo v2, "[\\*:?|\"<>\\\\/+]"

    const-string/jumbo v3, "_"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v2, "Uploading via ssf sdk"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    const/16 v3, 0x15

    const/16 v4, 0x16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, v55

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, v55

    iget-wide v14, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    long-to-int v14, v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mLockKey:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPushType:I
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v19

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->getPushValue(I)Z
    invoke-static/range {v18 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v19, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->refreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v21

    invoke-static/range {v2 .. v21}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadContentsinFolder(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_a
    new-instance v60, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;

    invoke-direct/range {v60 .. v60}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    const/16 v2, 0x15

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setReqId(I)V

    const/16 v2, 0x16

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setProgressWhat(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setRequestTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setListener(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setUserData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mInputStream:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setInputStream(Ljava/io/InputStream;)V

    move-object/from16 v0, v55

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setContentType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setFolderName(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setInsertFolder(Z)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v13}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setFileName(Ljava/lang/String;)V

    move-object/from16 v0, v55

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    long-to-int v2, v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setFileLength(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setRefreshIsListener(Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;)V

    const/4 v2, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setPublishUrl(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCid:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;->setCid(Ljava/lang/String;)V

    invoke-static/range {v60 .. v60}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadFile(Lcom/samsung/android/sdk/ssf/file/io/UploadFileRequest;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, v55

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMultiUploadType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMUpload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/content/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v55

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v19

    const/16 v20, 0x7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirName:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v55

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v34

    move-object/from16 v25, v9

    invoke-static/range {v19 .. v34}, Lcom/samsung/android/sdk/ssf/file/FileManager;->getMultiPartUploadKeyFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_c
    new-instance v25, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadList;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadList;-><init>()V

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    cmp-long v3, v4, v56

    if-ltz v3, :cond_d

    const-string/jumbo v3, "content"

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v49, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;

    invoke-direct/range {v49 .. v49}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;-><init>()V

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move-object/from16 v51, v0

    const-string/jumbo v3, "[\\*:?|\"<>\\\\/+]"

    const-string/jumbo v4, "_"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v46

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->setChunk_count(I)V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->setContent_type(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    move-object/from16 v0, v49

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->setSize(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->setPath(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadFile;->setTag(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadList;->getMuploadList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v48, 0x0

    goto/16 :goto_2

    :cond_e
    if-eqz v48, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "Encode error"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v18

    const/16 v19, 0x19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v27

    move-object/from16 v22, v9

    invoke-static/range {v18 .. v27}, Lcom/samsung/android/sdk/ssf/file/FileManager;->getMultiPartMultiUploadKeysFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadList;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v5

    const/16 v6, 0x19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCid:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, v25

    invoke-static/range {v5 .. v12}, Lcom/samsung/android/sdk/ssf/file/FileManager;->getMultiPartMultiUploadKeys(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, v55

    iget v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v26

    const/16 v27, 0x3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3600()[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v55

    invoke-virtual/range {v26 .. v33}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "Complete upload, m=%d cnt=%d/%d sz=%,d/%,d "

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v10, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCompleteContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalContentCount:I
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v5

    int-to-long v10, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContentCountReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v14

    add-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v14

    add-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v10, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeReal:J
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v14

    add-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v43

    if-eqz v43, :cond_13

    const-string/jumbo v2, "uploaded_file_count"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCompleteContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v3

    add-int v61, v2, v3

    const-string/jumbo v2, "uploaded_file_count"

    move-object/from16 v0, v43

    move/from16 v1, v61

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->put(Landroid/os/Bundle;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v2

    const/16 v3, 0x1b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v5, v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "[WakeLock] release pm lock"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v2, "extra_content_id"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    const-string/jumbo v2, "extra_upload_done"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    if-eqz v59, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    move/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v46

    if-eqz v46, :cond_1

    move-object/from16 v0, v46

    iget-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, v46

    iput-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v30

    const/16 v31, 0x9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPushType:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v3

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->getPushValue(I)Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)Z

    move-result v39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mLockKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v42

    move-object/from16 v34, v9

    invoke-static/range {v30 .. v42}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUploadFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method
