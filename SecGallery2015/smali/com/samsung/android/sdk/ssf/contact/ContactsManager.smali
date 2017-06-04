.class public Lcom/samsung/android/sdk/ssf/contact/ContactsManager;
.super Ljava/lang/Object;
.source "ContactsManager.java"


# static fields
.field private static CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

.field private static UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "uc/v1/contact/new"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    const-string/jumbo v0, "uc/v1/contact"

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    return-void
.end method

.method private static checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->validateInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SsfClient instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static createContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->CREATE_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    invoke-direct {v5, v7, v11}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_1
    new-instance v6, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v6, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v7}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v8, :cond_3

    iget v1, v8, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v1, v3, :cond_2

    check-cast v8, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    return-object v8

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static readContactList(Lcom/samsung/android/sdk/ssf/SsfClient;ZLjava/lang/Long;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Input shouldn\'t be null. Timestamp parameter should not have negative value timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "poll"

    invoke-virtual {v9, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "tt"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v10, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    invoke-direct {v5, v6, v10}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v7, :cond_5

    iget v1, v7, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v1, v3, :cond_4

    check-cast v7, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;

    return-object v7

    :cond_3
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "uc/v1/contact"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v7}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static updateContactList(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/util/List;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/SsfClient;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;",
            ")",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ssf/contact/server/ContactException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x7531

    const-string/jumbo v4, "This is a blocking call. Should not be called from MAIN thread."

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->checkSsfClientValidity(Lcom/samsung/android/sdk/ssf/SsfClient;)V

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Input shouldn\'t be null. ContactRequest has null value"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getApiServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->UPDATE_READ_CONTACT_LIST_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    const/4 v4, -0x1

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;

    const-class v11, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    invoke-direct {v5, v7, v11}, Lcom/samsung/android/sdk/ssf/contact/server/ContactResponseListener;-><init>(Lcom/android/volley/toolbox/RequestFuture;Ljava/lang/Class;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V

    const-string/jumbo v1, "Access-token"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "Duid"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getDuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    const-string/jumbo v1, "x-sc-appId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getTimeout()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getRetris()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;->getBackoffMult()F

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setTimeout(IIF)V

    :cond_2
    new-instance v6, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;

    invoke-direct {v6, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ssf/common/model/GsonRequest;->setBody(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    invoke-virtual {v7}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/ssf/SsfResult;

    if-eqz v8, :cond_4

    iget v1, v8, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v3, 0x2710

    if-ne v1, v3, :cond_3

    check-cast v8, Lcom/samsung/android/sdk/ssf/contact/io/ContactsListResponse;

    return-object v8

    :cond_3
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(Lcom/samsung/android/sdk/ssf/SsfResult;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;

    const/16 v3, 0x2af8

    const-string/jumbo v4, "Internal Sdk Error"

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
