.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.source "CreatePublicFolderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->handleMessage(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "QueryHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->token2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez p3, :cond_0

    const-string/jumbo v1, "insert failed"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v8, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ors"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "folderURL"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mGroupId:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;

    invoke-direct {v9}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSsfClient(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setReqId(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setCallback(Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setBody(Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setUserData(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeZone(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSendPush(Z)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mGcmPriority:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setGcmType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setTimeout(Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;->setSilencePush(Z)V

    invoke-static {v9}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->shareContents(Lcom/samsung/android/sdk/ssf/share/io/GenerateShareContentsRequest;)V

    goto/16 :goto_0

    :cond_2
    new-instance v8, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;

    iget-object v1, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest$ContentInfo;->remoteUri:Ljava/lang/String;

    const-string/jumbo v2, "image/jpeg"

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v11, p2

    check-cast v11, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;

    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;

    invoke-direct {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;-><init>()V

    iget-object v1, v11, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->folder_token:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->getContentToken()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v11, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsResponse;->expired_time:J

    invoke-virtual {v10, v1, v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->initCreatePublicFolderTokenResponse(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction$QueryHandler;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    # getter for: Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V

    const-string/jumbo v1, "Folder token inserted in db"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
