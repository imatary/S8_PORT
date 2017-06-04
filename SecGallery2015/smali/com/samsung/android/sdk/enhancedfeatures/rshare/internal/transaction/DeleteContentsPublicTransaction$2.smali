.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "DeleteContentsPublicTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "DeleteFile _ onProgress"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Http status code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const/16 v3, 0x191

    const-string/jumbo v4, "Error but VolleyError is null"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v12, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2716

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "consume cancel error, this is just for release thread"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2af9

    if-ne v2, v3, :cond_3

    const/4 v12, -0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const/16 v3, 0x191

    const-string/jumbo v4, "Network timeout occurs."

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v12, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2afa

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mStopped:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "NoConnectionError but it has already been paused"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v10, Ljava/lang/Throwable;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v12, -0xa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const/16 v3, 0x12c

    const-string/jumbo v4, "No network connection"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v12, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2ee0

    if-ne v2, v3, :cond_8

    const/16 v12, -0xb

    :cond_6
    :goto_1
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v6, 0x2ee1

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    const/4 v12, -0x3

    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HTTP ERROR ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    const/16 v3, 0x191

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v2, v3, v12, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2af8

    if-ne v2, v3, :cond_6

    const/16 v12, -0xc

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_7

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v12, v14

    goto :goto_2

    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deleted the path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->pathToBeDeleted:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # operator++ for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeletedCount:I
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1108(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)I

    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;->isNeedtoReduceQuota()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    check-cast p2, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->getSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->restoreQuota(J)V
    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;J)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeleteReturnPathsList:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeleteReturnPathsList:Ljava/util/ArrayList;

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeleteReturnPathsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->pathToBeDeleted:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeletePathsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->isFolderTokenReset:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "group_id"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mGroupID:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;

    move-result-object v2

    const/16 v3, 0x67

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mGroupID:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->GROUP_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1600()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeleteReturnPathsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Total path deleted is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeletedCount:I
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and the List is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->mDeleteReturnPathsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction$2;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
