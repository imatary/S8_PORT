.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;
.super Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;
.source "ContactSingleSyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    return-void
.end method

.method private getContactFromServer(ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "This is polling contact"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContactFromServer timeStamp = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", isServiceOn = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    invoke-static {v1, p1, v9}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_2

    iget v1, v8, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->httpStatusCode:I

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_2

    const-string/jumbo v1, "GetContactsInfo : SUCCESS"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStackedPush(Z)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setTimeStamp(J)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->getContactsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getContactsList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " getContactsList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->getContactsList()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->insertCoreAppsInfoToContactDB(Ljava/util/List;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    :goto_1
    return v3

    :catch_0
    move-exception v7

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "getContactsList size is null !!"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->notyfyNetworkError(Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;)V

    move v3, v0

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method private insertCoreAppsInfoToContactDB(Ljava/util/List;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;",
            "ZZ",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->notifyReponseToSyncListener(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    move-result-object v7

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->insertCoreAppsContact(Ljava/util/List;Z)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    move-result-object v6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_4

    :cond_0
    const-string/jumbo v0, "full_sync"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->getImageList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->getImageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-interface {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->localContactSyncDone(Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "changed_contact_id"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->getChangedContactIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->getImageList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;->getImageList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    move-object v0, p0

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->downloadContactImage(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notyfyNetworkError(Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "network error occured"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->showToastMsg(ILjava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->resultCode:I

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "This error is occured by bad access token. So request re-login"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->sendBadAccessTokenErrorResponse()V

    :cond_0
    return-void
.end method

.method private performSyncAgent(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;
    .locals 8

    move-object v2, p1

    :try_start_0
    const-string/jumbo v5, "extra_get_contact_from_server"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "only get changed contacts infos"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "onPerformSync - isFirstUpload : true"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncMePrivacy()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncContactList(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->ifOrNotUploadFavorites()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->uploadFavorites()V

    :cond_0
    const-string/jumbo v5, "extra_get_polling"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "extra_action_service_on"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->getContactFromServer(ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "onPerformSync - error from getContactFromServer"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x1

    const-string/jumbo v6, "onPerformSync - error from getContactFromServer"

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_1
    :try_start_1
    const-string/jumbo v5, "Run sync contact lists"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "contactSingleSyncAdapter syncMePrivacy();"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncMePrivacy()V

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncContactList(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->ifOrNotUploadFavorites()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->uploadFavorites()V

    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, 0x0

    const-string/jumbo v6, "Success"

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_0

    :catchall_0
    move-exception v5

    const-string/jumbo v6, "onPerformSync - exited"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method

.method private recoveryAgentDB()V
    .locals 6

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->compareNumber(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->applyBatch()Z

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setFirstUpload(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delta Contacts size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendBadAccessTokenErrorResponse()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    const/16 v2, 0x2ee1

    const-string/jumbo v3, "Server Bad Access Token"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    :cond_0
    return-void
.end method

.method private syncContactList(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/16 v2, 0xc8

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "Contact sync - entered"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    new-instance v6, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v0, 0x2710

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v10, v1}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator;->compareNumber(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;Z)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Delta Contacts size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    if-eqz v9, :cond_5

    iget v0, v9, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->httpStatusCode:I

    if-eq v0, v2, :cond_5

    :cond_1
    const-string/jumbo v0, "network error occured"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_2

    iget v0, v9, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->resultCode:I

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "This error is occured by bad access token. So request re-login"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->sendBadAccessTokenErrorResponse()V

    :cond_2
    :goto_1
    return v3

    :cond_3
    if-eqz v7, :cond_4

    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    move v3, v10

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    :try_end_1
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v8

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v0, v9, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->httpStatusCode:I

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isFirstUpload()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncContactList response tt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getTimeStamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setTimeStamp(J)V

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->applyBatch()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncContactList : SUCCESS getContactsList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncContactList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;->getContactsList()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->insertCoreAppsInfoToContactDB(Ljava/util/List;Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    :goto_3
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setFirstUpload(Z)V

    :cond_7
    const-string/jumbo v0, "Contact sync - ended"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "getContactsList size is null !!"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v8

    goto/16 :goto_2

    :catch_2
    move-exception v8

    goto/16 :goto_2
.end method


# virtual methods
.method public onPerformSync(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "extra_recovery_agent_db"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->recoveryAgentDB()V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const-string/jumbo v5, "Success"

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->onPerformSync(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const-string/jumbo v5, "extra_exit_sync"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_1

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const-string/jumbo v5, "Service not registered"

    invoke-direct {v4, v7, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V

    move-object v5, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "extra_set_contact"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_3

    :try_start_0
    const-string/jumbo v5, "This device cannot support multi sim"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncContactList(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, 0x0

    const-string/jumbo v6, "Set Contact Success"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v5, v4

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x2

    const-string/jumbo v6, "Set Contact Fails"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v5

    const-string/jumbo v6, "onPerformSync - exited"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_3
    const-string/jumbo v5, "extra_get_contact"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->getContactFromServer(ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v5

    if-ne v5, v8, :cond_4

    const-string/jumbo v5, "Get Contact from server - success getContactFromServer"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, 0x0

    const-string/jumbo v6, "Success"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v5, v4

    goto/16 :goto_0

    :cond_4
    :try_start_4
    const-string/jumbo v5, "Get Contact from server - error from getContactFromServer"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x1

    const-string/jumbo v6, "getContact - error from getContactFromServer"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_5
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v5

    const-string/jumbo v6, "onPerformSync - exited"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string/jumbo v5, "extra_is_agent"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->performSyncAgent(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    :try_start_6
    const-string/jumbo v5, "This device cannot support multi sim"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    const-string/jumbo v5, "extra_get_polling"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->getContactFromServer(ZZLcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v5, "onPerformSync - error from getContactFromServer"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->syncContactList(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v5, "onPerformSync - error from syncContactList"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->isContactServiceEnabled(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getAgentServiceStatus(Landroid/content/Context;I)I

    move-result v5

    if-ne v5, v8, :cond_9

    const-string/jumbo v5, "Sync contacts - upload me profile by agent"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, 0x0

    const-string/jumbo v6, "Success"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    goto/16 :goto_0

    :cond_9
    :try_start_7
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->uploadMeProfile()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    :catch_2
    move-exception v5

    move-object v1, v5

    :goto_7
    :try_start_8
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    goto/16 :goto_0

    :cond_a
    :try_start_9
    const-string/jumbo v5, "Sync contacts - contact service is off"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v5

    move-object v1, v5

    goto :goto_7

    :cond_b
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v5, -0x1

    const-string/jumbo v6, "Error"

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v1

    :try_start_a
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/16 v5, 0x753c

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_b
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/16 v5, 0x753b

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-string/jumbo v5, "onPerformSync - exited"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    const-string/jumbo v6, "onPerformSync - exited"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSingleSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method
