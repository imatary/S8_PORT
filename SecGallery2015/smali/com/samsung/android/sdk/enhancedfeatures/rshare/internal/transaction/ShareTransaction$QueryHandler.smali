.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.source "ShareTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cleaning db for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " gave result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "###onQueryComplete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string/jumbo v3, "Cursor is null"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v4, -0x4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->restoreQuota()V
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :sswitch_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v4, -0x4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "media_status"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/16 v3, 0xc8

    move/from16 v0, v28

    if-ne v0, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Already shared mid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v12, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "recipient_ids"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v3, "recipient_indexes"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v3, "to_list"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const-string/jumbo v3, "share_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete shareType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->isGroupShare:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "size"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaSize:I

    const-string/jumbo v3, "description"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "duration_time"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "content_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mContentCount:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "app"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mApp:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "silence_push"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSilencePush:Z
    invoke-static {v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Z)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, -0x1

    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setItems(Ljava/util/List;)V

    :goto_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "public_url"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v3, "content_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->getItems()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move-object/from16 v0, p3

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->getSharedItem(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;
    invoke-static {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->isGroupShare:Z

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-boolean v3, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->isGroupShare:Z

    if-eqz v3, :cond_8

    new-instance v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mApp:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->generateTdkApiId()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mShareApiId:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Ljava/lang/String;)Ljava/lang/String;

    new-instance v26, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;

    invoke-direct/range {v26 .. v26}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    const/16 v3, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setReqId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setBody(Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;)V

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setUserData(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeZone(Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSendPush(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mGCMType:I
    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)I

    move-result v4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->getGCMValue(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setGcmType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mTag:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSilencePush:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Z

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSilencePush(Z)V

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->shareContents(Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;)V

    goto/16 :goto_1

    :cond_8
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, ";"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v3, ";"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "arrayNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "arrayIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContactUtil;->convertSharingListForServer([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    :cond_9
    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/16 v4, -0x23

    const-string/jumbo v10, "Requested with wrong numbers"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(ILjava/lang/String;)V
    invoke-static {v3, v4, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mApp:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    move-object v10, v2

    move-object v13, v5

    move-object v14, v6

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_6

    :sswitch_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v4, -0x4

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(I)V
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "gcm_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mGCMType:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "req_token"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mReqToken:J
    invoke-static {v3, v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;J)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const-string/jumbo v4, "dir"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mDirectory:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v12, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-static {v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getOutboxContentUri(J)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;

    move-result-object v12

    const/4 v13, 0x6

    const/4 v14, 0x0

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2200()[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateComplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v21, p2

    check-cast v21, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->share_type:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setShareType(I)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->to_list:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->to_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setSharedTo([Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->to_list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->getSharedTo()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->expired_time:J

    iput-wide v8, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->expiry:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->from_msisdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setSharedBy(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setWebUrl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->contents_token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setShareToken(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->share_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setShareCode(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->push_status:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->auth_code:Ljava/util/List;

    if-nez v20, :cond_2

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    const/4 v3, -0x1

    const-string/jumbo v4, "empty auth code"

    # invokes: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->markErrorOnMedia(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSmsRecepients:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v18

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;

    iget-object v0, v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;->to_msisdn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;

    iget-boolean v0, v2, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse$PushStatus;->need_to_sms:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSmsRecepients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v2, "Share Complete m=%d tz=[%s], %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v8, v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mTzStr:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mShareApiId:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSmsRecepients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v15, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mSmsRecepients:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setNonPushableList([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mReqToken:J
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setRequestToken(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setShareId(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mDirectory:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;->setSharedDirectory(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mPaused:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Already Paused,no need to return response"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-wide v8, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaId:J

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "[WakeLock] release pm lock"

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;

    move-result-object v7

    const/16 v8, 0x15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-object v10, v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->mMediaUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->stop()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
