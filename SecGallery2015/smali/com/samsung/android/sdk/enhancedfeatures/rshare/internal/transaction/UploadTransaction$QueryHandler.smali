.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.source "UploadTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 18

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    const/16 v2, 0x17

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###onApplyBatchComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    const/4 v2, 0x2

    aget-object v2, p3, v2

    iget-object v0, v2, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/16 v3, -0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v6, p2

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v2, "extra_content_id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v2, "extra_upload_done"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_3

    const-string/jumbo v2, "[TOKEN_DELETE_CHUNK_UPLOADED] upload done"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-boolean v2, v9, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "[TOKEN_DELETE_CHUNK_UPLOADED] Already ended"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v5

    iget-object v7, v9, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUpload(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v2, 0x1

    aget-object v2, p3, v2

    iget-object v0, v2, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/16 v3, -0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v6, p2

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v2, "extra_content_id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->poll(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v9

    if-nez v9, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Content is not found, contentid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remained content num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v6, p2

    check-cast v6, Landroid/os/Bundle;

    const-string/jumbo v2, "extra_content_id"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v9

    if-eqz v9, :cond_1

    int-to-long v2, v15

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v7

    const/4 v8, 0x3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1500()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const/4 v2, 0x1

    aget-object v2, p3, v2

    iget-object v0, v2, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/16 v3, -0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x17 -> :sswitch_3
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###onQueryComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "Cursor is null"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v44, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "This media is invalid, uri = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v7, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "this media is not dirty, considering as fresh upload"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3500()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    const-string/jumbo v3, "file_size"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    add-long/2addr v8, v12

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J
    invoke-static {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # operator++ for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3008(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v11, v2

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3500()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v11

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dirtany contents found, with total of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "content_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "size"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    const-string/jumbo v2, "error"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const-string/jumbo v2, "status"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    const/16 v2, 0x12c

    move/from16 v0, v44

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "media_progress_real"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J
    invoke-static {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "complete_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "dir"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const-string/jumbo v3, "req_token"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J
    invoke-static {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    const/16 v2, 0xc8

    move/from16 v0, v44

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v2

    if-lez v2, :cond_6

    const-string/jumbo v2, "media is already shared, this transaction is for updating existing share"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "nothing to update"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->finishOrsUpload()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "media status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v2

    if-nez v2, :cond_7

    const/16 v42, -0x5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No content to share this media = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v7, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xc9

    move/from16 v0, v44

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to start upload. This media was canceled already, media = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media to upload, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " progressReal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    add-long/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    const/16 v2, 0xc8

    move/from16 v0, v44

    if-ne v0, v2, :cond_9

    const-string/jumbo v2, "its already uploaded"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->finishOrsUpload()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_b

    :cond_a
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z

    :cond_b
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v16

    if-eqz v16, :cond_f

    const-string/jumbo v2, "byte_usage"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v46

    const-string/jumbo v2, "quota"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v40

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start upload, mi="

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " comcnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " realCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContentCountReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I

    move-result v3

    int-to-long v12, v3

    add-long/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " topr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v46

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v40

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x64

    move/from16 v0, v44

    if-ne v0, v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This media is on progress. but coninue to upload. media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v44, :cond_e

    const/16 v2, 0x191

    move/from16 v0, v44

    if-ne v0, v2, :cond_d

    const/16 v2, -0x14

    move/from16 v0, v27

    if-eq v0, v2, :cond_e

    :cond_d
    const/16 v2, 0xc8

    move/from16 v0, v44

    if-ne v0, v2, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    add-long v28, v46, v2

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    :cond_f
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "media_progress"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v9, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v24

    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "No file in content table"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_10
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string/jumbo v2, "status"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/16 v2, 0x8

    move/from16 v0, v43

    if-eq v0, v2, :cond_10

    const/4 v2, 0x3

    move/from16 v0, v43

    if-eq v0, v2, :cond_10

    new-instance v25, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;-><init>()V

    const-string/jumbo v2, "path"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    const-string/jumbo v2, "content"

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/16 v30, 0x0

    const/16 v33, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v33

    const-string/jumbo v2, "file_size"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v30

    if-eqz v33, :cond_11

    :try_start_6
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_11
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-gtz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File not found "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete. close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v26

    :try_start_7
    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FileNotFoundException "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v33, :cond_0

    :try_start_8
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete. close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    if-eqz v33, :cond_12

    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_12
    :goto_5
    throw v2

    :catch_3
    move-exception v26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete. close. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    const-string/jumbo v2, "file"

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v17, Ljava/io/File;

    invoke-static/range {v37 .. v37}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/16 v2, 0x0

    cmp-long v2, v34, v2

    if-gtz v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File not exists "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, "file_size"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    const-string/jumbo v2, "filename"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move/from16 v0, v32

    int-to-long v2, v0

    move-object/from16 v0, v25

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    const-string/jumbo v2, "upload_key"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const-string/jumbo v2, "chunk_size"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkSize:I

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    const-string/jumbo v2, "chunk_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    const-string/jumbo v2, "content_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    const-string/jumbo v2, "progress_real"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v25

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    const-string/jumbo v2, "tag"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-object/from16 v0, v25

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->add(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    goto/16 :goto_3

    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " contents to be uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "already paused get_or_create_chunks"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v25, p2

    check-cast v25, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    move-object/from16 v0, v25

    iget v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    if-nez v2, :cond_18

    const-string/jumbo v2, "pending chunk count 0, already uploaded, start end upload again"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v25

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_upload_done"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_18
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File not exists , path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "chunk_index"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string/jumbo v2, "byte_offset"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string/jumbo v2, "byte_length"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v25

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_upload_key"

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_chunk_size"

    move/from16 v0, v21

    int-to-long v8, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v11

    const/16 v12, 0x8

    const/16 v13, 0x16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v15

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v11 .. v23}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadMultiPart(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;IIILcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    :cond_1a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_1b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :sswitch_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    const/4 v3, -0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->cancel(I)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v2, "media_status"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/16 v2, 0xc8

    move/from16 v0, v43

    if-ne v0, v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already shared mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;-><init>()V

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setItems(Ljava/util/List;)V

    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->getItems()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move-object/from16 v0, p3

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getSharedItem(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;
    invoke-static {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1e
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "Already Paused,no need to update db"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v2

    const/16 v3, 0x1f

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1d -> :sswitch_1
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaUri:Landroid/net/Uri;

    const-string/jumbo v3, "content"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v9, "_id ASC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v21, p2

    check-cast v21, Landroid/os/Bundle;

    const-string/jumbo v2, "extra_upload_key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move/from16 v0, v20

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v10

    const/4 v11, 0x3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1500()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Share Complete m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setRequestToken(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setShareId(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Already Paused,no need to return response"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "[WakeLock] release pm lock"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    move-result-object v14

    const/16 v15, 0x20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    iget-object v0, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p2

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method
