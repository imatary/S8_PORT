.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;
.super Ljava/lang/Object;
.source "AuthorizationListenerImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/ssf/account/AuthorizationListener;


# static fields
.field private static final SYNC_ACCESS_TOKEN:Ljava/lang/Object;

.field private static final SYNC_FOLDER_TOKEN:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->SYNC_ACCESS_TOKEN:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->SYNC_FOLDER_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDetailsFromHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getDetailsFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    const-string/jumbo v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public refreshAccessToken(Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Request;
    .locals 26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetworkResponse : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v2, :cond_11

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "AuthorizationListenerImpl"

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RMsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee7142f0L

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee7146d8L

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide/16 v6, 0x4a40

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee7146d7L

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee714abfL

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v4

    const-wide v6, 0xee714ac0L

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Invalid refresh_token."

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Invalid access_token."

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Bad access token."

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_0
    move-object/from16 v12, p1

    check-cast v12, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    iget-boolean v2, v12, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->isFolderORS:Z

    if-eqz v2, :cond_8

    sget-object v23, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->SYNC_FOLDER_TOKEN:Ljava/lang/Object;

    monitor-enter v23

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "uid"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->getDetailsFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "cid"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->getDetailsFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v18, :cond_1

    const-string/jumbo v2, "mGroupId is null, hence exiting"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x0

    monitor-exit v23

    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v2, "Refreshing folder token."

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "x-sc-appId"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->getDetailsFromHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_1
    :try_start_2
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->updateFolderToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Got new folder token: "

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "group_id"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/16 v17, 0x0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "folder_token"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New folder_token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/ors"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ors/v2/upload"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getFetchISListener()Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;->refreshInputStream(Landroid/os/Bundle;)Ljava/io/InputStream;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-object v2, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setInputStream(Ljava/io/InputStream;)V

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "access_token=[^&]+"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->setUrl(Ljava/lang/String;)V

    :cond_4
    :goto_4
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Lcom/android/volley/AuthFailureError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_5
    :try_start_5
    const-string/jumbo v2, "Refresh folder_token failed. Returning null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 p1, 0x0

    :try_start_6
    monitor-exit v23

    goto/16 :goto_0

    :catch_1
    move-exception v13

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v13

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/FileRequest;

    move-object/from16 v20, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "Access-token"

    move-object/from16 v0, v17

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lcom/android/volley/AuthFailureError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v10

    :try_start_8
    invoke-virtual {v10}, Lcom/android/volley/AuthFailureError;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->SYNC_ACCESS_TOKEN:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v2, "last_access_token_refresh_time"

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    sub-long v6, v6, v24

    const-wide/32 v24, 0x927c0

    cmp-long v2, v6, v24

    if-lez v2, :cond_f

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v6

    const-wide v24, 0xee7146d7L

    cmp-long v2, v6, v24

    if-eqz v2, :cond_9

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRcode()J

    move-result-wide v6

    const-wide v24, 0xee714abfL

    cmp-long v2, v6, v24

    if-eqz v2, :cond_9

    const-string/jumbo v2, "Invalid refresh_token."

    invoke-virtual {v14}, Lcom/samsung/android/sdk/ssf/account/io/ErrorResponse;->getRmsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->updateRefreshToken()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "Got new refresh_token "

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "Refresh-Token"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Lcom/android/volley/AuthFailureError; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_a
    :goto_5
    :try_start_b
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New access_token: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", IMSI: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "/ors"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v20, 0x0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz v2, :cond_b

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ors/v2/upload"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getFetchISListener()Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getUserData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v5, v2}, Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;->refreshInputStream(Landroid/os/Bundle;)Ljava/io/InputStream;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    move-object v2, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setInputStream(Ljava/io/InputStream;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "access_token=[^&]+"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v20, :cond_c

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->setUrl(Ljava/lang/String;)V

    :cond_c
    :goto_6
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v2

    :catch_4
    move-exception v10

    :try_start_c
    invoke-virtual {v10}, Lcom/android/volley/AuthFailureError;->printStackTrace()V

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v2, "Refreshing access token."

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/LoginTransaction;->updateAccessToken()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "Got new access_token: "

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v2, "Refresh access_token failed. Returning null"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x0

    monitor-exit v4

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "Refreshed access token less than 600000 ms"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/AuthorizationListenerImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_5

    :cond_10
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "Access-token"

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lcom/android/volley/AuthFailureError; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v10

    :try_start_e
    invoke-virtual {v10}, Lcom/android/volley/AuthFailureError;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :cond_11
    const/16 p1, 0x0

    goto/16 :goto_0
.end method
