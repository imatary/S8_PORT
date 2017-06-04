.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.source "UploadContentsPublicModeTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 19

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "###onApplyBatchComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x17

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mToken:I
    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    const/4 v1, 0x2

    aget-object v1, p3, v1

    iget-object v15, v1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v2, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v5, p2

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v1, "extra_content_id"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v1, "extra_upload_done"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v1, "[TOKEN_DELETE_CHUNK_UPLOADED] upload done"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "[TOKEN_DELETE_CHUNK_UPLOADED] Already ended"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPushType:I
    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v11

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->getPushValue(I)Z
    invoke-static {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mLockKey:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v13

    invoke-static/range {v1 .. v13}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUploadFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCid:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/samsung/android/sdk/ssf/file/FileManager;->endMultiPartUpload(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v1, 0x1

    aget-object v1, p3, v1

    iget-object v15, v1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v2, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v5, p2

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v1, "extra_content_id"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->poll(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v16

    if-nez v16, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Content is not found, contentid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remained content num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->isFolderTokenReset:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "group_id"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v6

    const/16 v7, 0x66

    const/4 v8, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->GROUP_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v5, p2

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v1, "extra_content_id"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->get(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->isFolderTokenReset:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "group_id"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v6

    const/16 v7, 0x66

    const/4 v8, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->GROUP_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_3
    const/4 v1, 0x1

    aget-object v1, p3, v1

    iget-object v15, v1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v2, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "media has been removed"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

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
    .locals 58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###onQueryComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mToken:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "Cursor is null"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v54, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_0
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string/jumbo v3, "folder_token"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string/jumbo v3, "ors_region_url"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cursor is null for groupID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0x191

    const/16 v4, -0x30

    const-string/jumbo v6, "No groupID in DB"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;IILjava/lang/String;)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->isFolderTokenReset:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const-string/jumbo v3, "folder_token"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    if-eqz p2, :cond_4

    move-object/from16 v2, p2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    iget v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getContentChunkUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3600()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_5
    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Folder Token is null for the group ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0x191

    const/16 v4, -0x2f

    const-string/jumbo v6, "No folderToken in DB"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;IILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_2
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "this media is not dirty, considering as fresh upload"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4400()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStopped:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    const/4 v2, -0x1

    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeOffset:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->DIRTY_PROJECTION_CONTENT_SIZE:I
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4300()I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    add-long/2addr v6, v10

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeOffset:J
    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # operator++ for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1708(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4400()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v4, 0x0

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStopped:Z
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_8
    :try_start_2
    const-string/jumbo v2, "total %d dirtany contents found, with total of %d in size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirtyContentCount:I
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeOffset:J
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :sswitch_3
    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This media is invalid, uri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalContentCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressInflight:J
    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCompleteContentCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mReqToken:J
    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;J)J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPushType:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMultiUploadType:I
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/16 v3, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mLockKey:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "group_id"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v10

    const/16 v11, 0x65

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v12

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->GROUP_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4500()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    const/16 v2, 0xc8

    move/from16 v0, v54

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    if-lez v2, :cond_b

    const-string/jumbo v2, "media is already shared, this transaction is for updating existing share"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mDirtyContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "nothing to update"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    :cond_c
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStarted:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Z)Z

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalContentCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "media status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v54

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalContentCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    if-nez v2, :cond_e

    const/16 v52, -0x5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No content to share this media = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0xc9

    move/from16 v0, v54

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to start upload. This media was canceled already, media = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v2, "Media to upload, size = %d progressReal= %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeReal:J
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeReal:J
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    const/16 v2, 0xc8

    move/from16 v0, v54

    if-ne v0, v2, :cond_10

    const-string/jumbo v2, "its already uploaded"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v24

    if-eqz v24, :cond_14

    const-string/jumbo v2, "byte_usage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v56

    const-string/jumbo v2, "quota"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    const-string/jumbo v2, "Start upload, m=%d cnt=%d/%d sz=%,d/%,d q=%,d/%,d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCompleteContentCount:I
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContentCountReal:J
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalContentCount:I
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v8

    int-to-long v10, v8

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSizeReal:J
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v10

    add-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x64

    move/from16 v0, v54

    if-ne v0, v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This media is on progress. but coninue to upload. media = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v6, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v54, :cond_13

    const/16 v2, 0x191

    move/from16 v0, v54

    if-ne v0, v2, :cond_12

    const/16 v2, -0x14

    move/from16 v0, v37

    if-eq v0, v2, :cond_13

    :cond_12
    const/16 v2, 0xc8

    move/from16 v0, v54

    if-ne v0, v2, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaSize:J

    add-long v38, v56, v2

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    :cond_14
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "media_progress"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTotalProgressReal:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v14

    const/16 v15, 0x18

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v0, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-nez v34, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "No file in content table"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_15
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    const/16 v2, 0x8

    move/from16 v0, v53

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    move/from16 v0, v53

    if-eq v0, v2, :cond_15

    new-instance v35, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    invoke-direct/range {v35 .. v35}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;-><init>()V

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v45

    const-string/jumbo v2, "content"

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-wide/16 v40, 0x0

    const/16 v44, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v44

    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v40

    if-eqz v44, :cond_16

    :try_start_6
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_16
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v40, v2

    if-gtz v2, :cond_19

    if-eqz p3, :cond_17

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File not found "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete. close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v36

    :try_start_7
    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v44, :cond_0

    :try_start_8
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onQueryComplete. close. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    if-eqz v44, :cond_18

    :try_start_9
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_18
    :goto_6
    throw v2

    :catch_3
    move-exception v36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete. close. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    const-string/jumbo v2, "file"

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v25, Ljava/io/File;

    invoke-static/range {v48 .. v48}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v46

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-wide/16 v2, 0x0

    cmp-long v2, v46, v2

    if-gtz v2, :cond_1c

    :cond_1a
    if-eqz p3, :cond_1b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File not exists "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    move/from16 v0, v42

    int-to-long v2, v0

    move-object/from16 v0, v35

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v35

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkSize:I

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v35

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v35

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->chunkCnt:I

    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentType:Ljava/lang/String;

    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v35

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressReal:J

    move-object/from16 v0, v35

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    const/4 v2, 0x0

    move-object/from16 v0, v35

    iput-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->callEnd:Z

    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->add(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    goto/16 :goto_4

    :cond_1d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    const-string/jumbo v2, "%d of %d contents to be uploaded"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "already paused get_or_create_chunks"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v35, p2

    check-cast v35, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;

    const/4 v2, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v35

    iput v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    move-object/from16 v0, v35

    iget v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->pendingChunkCount:I

    if-nez v2, :cond_20

    if-eqz p3, :cond_1f

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1f
    const-string/jumbo v2, "pending chunk count 0, already uploaded, start end upload again"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v49

    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v35

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_upload_done"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_20
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    if-eqz p3, :cond_21

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_21
    const-string/jumbo v2, "File not exists , path = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileUrlStr:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v37

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)V

    goto/16 :goto_0

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_content_id"

    move-object/from16 v0, v35

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extra_upload_key"

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_chunk_size"

    move/from16 v0, v29

    int-to-long v6, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mShareType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v19

    const/16 v20, 0x8

    const/16 v21, 0x16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v23

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mFolderToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mOrsRegionUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v33

    invoke-static/range {v19 .. v33}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadMultiPartFolderSync(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    :cond_23
    :goto_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_24
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_25
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v19

    const/16 v20, 0x8

    const/16 v21, 0x16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mTag:Ljava/lang/Object;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v23

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->uploadKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mCid:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v19 .. v31}, Lcom/samsung/android/sdk/ssf/file/FileManager;->uploadMultiPart(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;IIILcom/samsung/android/sdk/ssf/common/ConnectTimeout;Ljava/lang/String;)V

    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_4
        0x3 -> :sswitch_5
        0x1d -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
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

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    move/from16 v0, p1

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mToken:I
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;I)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    const-string/jumbo v3, "content"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v9, "_id ASC"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$4600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
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

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

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

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v10

    const/4 v11, 0x3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$3600()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;

    move-result-object v14

    const/16 v15, 0x1e

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;

    iget-object v0, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadContentsPublicModeTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x18 -> :sswitch_0
        0x1b -> :sswitch_2
    .end sparse-switch
.end method
