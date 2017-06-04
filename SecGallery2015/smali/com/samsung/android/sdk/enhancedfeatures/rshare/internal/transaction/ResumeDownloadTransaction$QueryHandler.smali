.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.source "ResumeDownloadTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11

    const/16 v4, -0x8d

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/4 v10, -0x1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x2

    if-ne v10, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const-string/jumbo v2, "no such download session mediaId"

    const-string/jumbo v3, "no such download session mediaId"

    invoke-direct {v0, v4, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mUserData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const-string/jumbo v2, "no such  mediaId"

    const-string/jumbo v3, "no such  mediaId"

    invoke-direct {v0, v4, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mUserData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transaction already started = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v2, -0x9

    const-string/jumbo v3, "transaction already started"

    const-string/jumbo v4, "transaction already started"

    invoke-direct {v0, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v2, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mUserData:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    goto/16 :goto_1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v4, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mUserData:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-wide v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->add(Ljava/lang/Object;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;)V

    const-string/jumbo v2, "[WakeLock] acquire pm lock"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
