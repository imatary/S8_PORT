.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;
.source "GetFolderExpiredTimeTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_7

    const/4 v8, -0x1

    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    if-nez v14, :cond_0

    const-string/jumbo v14, "Error but VolleyError is null"

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;I)V

    invoke-static {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v15, 0x2af9

    if-ne v14, v15, :cond_1

    const/4 v8, -0x2

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;I)V

    invoke-static {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v15, 0x2afa

    if-ne v14, v15, :cond_2

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v14, "no connection or socket error"

    invoke-direct {v2, v14}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v14}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/16 v8, -0xa

    move v3, v8

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;I)V

    invoke-static {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v15, 0x2ee0

    if-ne v14, v15, :cond_5

    const/16 v8, -0xb

    :cond_3
    :goto_1
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v16, 0x2ee1

    cmp-long v14, v14, v16

    if-nez v14, :cond_6

    const/4 v8, -0x3

    :cond_4
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HTTP ERROR ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget v15, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;I)V

    invoke-static {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v15, 0x2af8

    if-ne v14, v15, :cond_3

    const/16 v8, -0xc

    goto :goto_1

    :cond_6
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    long-to-int v8, v10

    goto :goto_2

    :cond_7
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v7, p2

    check-cast v7, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;

    const/4 v13, 0x0

    iget-object v14, v7, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    if-eqz v14, :cond_8

    iget-object v14, v7, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v14, v14

    new-array v13, v14, [Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    const/4 v5, 0x0

    iget-object v15, v7, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;->urls:[Lcom/samsung/android/sdk/ssf/share/io/URLDetail;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    move v6, v5

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    aget-object v12, v15, v14

    new-instance v9, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;

    invoke-direct {v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;-><init>()V

    iget-wide v0, v12, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->expired_time:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setExpiredTime(J)V

    iget-object v0, v12, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setId(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/samsung/android/sdk/ssf/share/io/URLDetail;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v5, v6, 0x1

    aput-object v9, v13, v6

    add-int/lit8 v14, v14, 0x1

    move v6, v5

    goto :goto_3

    :cond_8
    move-object v4, v13

    new-instance v14, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction$1;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsExpiredTimeResponse;[Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareUrlItem;)V

    invoke-static {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
