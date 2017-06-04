.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "ShareTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_a

    const/4 v10, -0x1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v2, :cond_1

    const-string/jumbo v2, "Error but VolleyError is null"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2af9

    if-ne v2, v3, :cond_2

    const/4 v10, -0x2

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2afa

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mPaused:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "NoConnectionError but it has already been paused"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v9, Ljava/lang/Throwable;

    const-string/jumbo v2, "no connection or socket error"

    invoke-direct {v9, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v10, -0xa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2ee0

    if-ne v2, v3, :cond_8

    const/16 v10, -0xb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->restoreQuota()V
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)V

    :cond_5
    :goto_1
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v14, 0x2ee1

    cmp-long v2, v2, v14

    if-nez v2, :cond_9

    const/4 v10, -0x3

    :cond_6
    :goto_2
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide v14, 0xee6e3941L

    cmp-long v2, v2, v14

    if-nez v2, :cond_7

    const/16 v10, -0x23

    :cond_7
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

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(ILjava/lang/String;)V
    invoke-static {v2, v10, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2af8

    if-ne v2, v3, :cond_5

    const/16 v10, -0xc

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-gez v2, :cond_6

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v10, v12

    goto :goto_2

    :cond_a
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mPaused:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "Already Paused,no need to update db"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v4, p2

    check-cast v4, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-object v3, v4, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->url:Ljava/lang/String;

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mWebUrl:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "web_url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mWebUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contents_token"

    iget-object v3, v4, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->contents_token:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v14, v4, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->expired_time:J

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mExpireDate:J
    invoke-static {v2, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;J)J

    const-string/jumbo v2, "expire_date"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mExpireDate:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v14, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
