.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "GetSharePolicyTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 10

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v6, 0xc8

    if-eq v3, v6, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Http status code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "Error but VolleyError is null"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v3, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v6, 0x2716

    if-ne v3, v6, :cond_2

    const-string/jumbo v3, "consume cancel error, this is just for release thread"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v6, 0x2af9

    if-ne v3, v6, :cond_3

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "Network timeout occurs."

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    invoke-static {v3, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v6, 0x2afa

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->mStopped:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "NoConnectionError but it has already been paused"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/Throwable;

    iget-object v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v2, -0xa

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    const/16 v6, 0x12c

    const-string/jumbo v7, "No network connection"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v3, v6, v2, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;IILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v6, 0x2ee0

    if-ne v3, v6, :cond_8

    const/16 v2, -0xb

    :cond_6
    :goto_1
    iget-wide v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v8, 0x2ee1

    cmp-long v3, v6, v8

    if-nez v3, :cond_9

    const/4 v2, -0x3

    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HTTP ERROR ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    const/16 v6, 0x191

    iget-object v7, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->stop(IILjava/lang/String;)V
    invoke-static {v3, v6, v2, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v3, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v6, 0x2af8

    if-ne v3, v6, :cond_6

    const/16 v2, -0xc

    goto :goto_1

    :cond_9
    iget-wide v6, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    iget-wide v4, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v2, v4

    goto :goto_2

    :cond_a
    const/16 v3, 0x65

    if-ne p1, v3, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction$1;Landroid/os/Bundle;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
