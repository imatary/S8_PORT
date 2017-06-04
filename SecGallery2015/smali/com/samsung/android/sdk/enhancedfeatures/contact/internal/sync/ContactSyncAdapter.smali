.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;
.super Ljava/lang/Object;
.source "ContactSyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isSuccess:Z

.field protected mContext:Landroid/content/Context;

.field protected mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private contactResponseToProfileData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->contactResponseToProfileDetails(Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method


# virtual methods
.method protected downloadContactImage(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->start()V

    return-void
.end method

.method protected notifyReponseToSyncListener(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->contactResponseToProfileData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/LocalContactSyncResponse;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/LocalContactSyncResponse;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onInsertContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/LocalContactSyncResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPerformSync(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const-string/jumbo v3, "onPerformSync - entered"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v3, "extra_action_revise_contact"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Constant.EXTRA_ACTION_REVISE_CONTACT"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->reviseContact(Landroid/os/Bundle;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->printCoreAppsContacts(Landroid/content/Context;)V

    const-string/jumbo v3, "extra_action_service_off"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearProfileTable(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearSyncDataTable(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearSyncRawTable(Landroid/content/Context;)V

    const-string/jumbo v3, "Constant.EXTRA_ACTION_SERVICE_OFF"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStatusMessage(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v3, "extra_action_upload_profile_on"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Constant.EXTRA_ACTION_SERVICE_ON"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->uploadMeProfile()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    if-eqz v3, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v3, 0x0

    const-string/jumbo v4, "Upload Profile Success"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v2, v1

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Failed to get ESU auth info from esu provider"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "extra_exit_sync"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v3, -0x1

    const-string/jumbo v4, "Service not registered"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v3, -0x2

    const-string/jumbo v4, "Upload Profile Fail"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    const/4 v3, 0x0

    const-string/jumbo v4, "Sync Success"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "extra_exit_sync"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;-><init>(ILjava/lang/String;)V

    move-object v2, v1

    goto :goto_1
.end method

.method protected reviseContact(Landroid/os/Bundle;)V
    .locals 16

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;-><init>()V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v13, "users_list"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "reviseContact - EXTRA_USERS_LIST is null"

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v13, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;

    invoke-virtual {v6, v9, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;

    if-nez v11, :cond_2

    const-string/jumbo v13, "reviseContact - userList is null"

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->getCoreAppUserData()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_4

    :cond_3
    const-string/jumbo v13, "reviseContact - users is null or size is 0"

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getDuid()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "reviseContact - duid is null"

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getDuid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "reviseContact - no my contact"

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getDuid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getMsisdnByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "reviseContact - msisdn is null"

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getDuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setDeviceuniqueId(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setMsisdn(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getType()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/datainterface/ContactType;->DELETE:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/datainterface/ContactType;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/datainterface/ContactType;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->DELETE:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setTy(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getDuid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getSidsByDUID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getServiceStatus()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    const/4 v14, 0x1

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getServiceID()I

    move-result v15

    shl-int/2addr v14, v15

    or-int v3, v4, v14

    :goto_3
    if-ne v3, v4, :cond_a

    const-string/jumbo v14, "sids is same, just continue"

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v14, 0x1

    invoke-virtual {v10}, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->getServiceID()I

    move-result v15

    shl-int/2addr v14, v15

    xor-int/lit8 v14, v14, -0x1

    and-int v3, v4, v14

    goto :goto_3

    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sids is changed. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->SET:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setTy(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setServiceId(I)V

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    const/4 v13, 0x0

    invoke-static {v7, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->insertCoreAppsContact(Ljava/util/List;Z)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->notifyReponseToSyncListener(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;

    goto/16 :goto_0
.end method

.method public setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;)V
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    :cond_0
    return-void
.end method

.method protected syncMePrivacy()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v3, "syncMePrivacy - entered"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getPrivacy()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "syncMePrivacy - no diff to upload privacy"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "syncMePrivacy - exit"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->uploadFavorites()V

    :goto_1
    const-string/jumbo v3, "syncMePrivacy - exit"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->uploadSeletedContact()V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    const-string/jumbo v3, "syncMePrivacy - SUCCESS"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "syncMePrivacy - FAILED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected uploadFavorites()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const-string/jumbo v7, "uploadFavorites - entered"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->getPhonenumbersForFavorites(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const-string/jumbo v7, "Privacy \'Favorites\' but list is null"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v7, "uploadMyFavorites - SUCCESS"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string/jumbo v7, "uploadMyFavorites - FAILED"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method protected uploadMeProfile()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "uploadMeProfile - entered"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->compareProfile(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "No profile diff to upload"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setImage([B)V

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileInfo(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->applyBatch()Z

    const-string/jumbo v3, "uploadMeProfile - SUCCESS"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->isSuccess:Z

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;

    move-result-object v3

    invoke-virtual {v3, v6, v5, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/ToastMsgManager;->showToastMsg(ILjava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "uploadMeProfile - FAILED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method protected uploadSeletedContact()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const-string/jumbo v7, "uploadSeletedContact - entered"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getPhonenumbersForSelectedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const-string/jumbo v7, "Privacy \'Selected but list is null"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    const-string/jumbo v7, "uploadSeletedContact - SUCCESS"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string/jumbo v7, "uploadSeletedContact - FAILED"

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0
.end method
