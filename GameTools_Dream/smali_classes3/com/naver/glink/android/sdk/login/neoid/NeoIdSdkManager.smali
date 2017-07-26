.class public Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;
.super Ljava/lang/Object;
.source "NeoIdSdkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0.1.11"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 2

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->network_error:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->connectionsRequest:Lcom/naver/glink/android/sdk/api/requests/CacheRequest;

    new-instance v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;

    invoke-direct {v1, p0, p1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$1;-><init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/api/requests/CacheRequest;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    new-instance v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$2;

    invoke-direct {v1}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$2;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    sget-object v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getInstance(Landroid/content/Context;)Lcom/naver/glink/android/sdk/api/request/VolleyQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/request/VolleyQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method static a(Z)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-interface {v0, p0}, Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;->onLoggedIn(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;)V
    .locals 4

    sput-object p1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->c:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "cafeId"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "channelId"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/requests/CacheRequests;->getChannelId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v2

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/configure/a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timeZoneId"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "langCode"

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getSystemLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "androidPackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->getLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->makeQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse;->optional:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Optional;->apis:Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$ConnectionsResponse$Apis;->finish_path:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/naver/glink/android/sdk/login/neoid/NeoIdInAppBrowserActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "finish_url"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;->rtn_data:Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/naver/glink/android/sdk/login/neoid/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;->rtn_data:Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse$ReturnData;->sns_cd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/login/neoid/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GResponses$LoginResponse;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c()Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->NEED_INIT:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->NEED_LOGIN:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;->OK:Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager$NeoIdTokenState;

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/login/neoid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/naver/glink/android/sdk/login/neoid/NeoIdSdkManager;->b:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/login/neoid/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
