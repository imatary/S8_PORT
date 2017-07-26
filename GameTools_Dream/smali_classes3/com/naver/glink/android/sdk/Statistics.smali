.class public Lcom/naver/glink/android/sdk/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CURRENCY_DOLLAR:Ljava/lang/String; = "DOLLAR"

.field public static final CURRENCY_NONE:Ljava/lang/String; = "NONE"

.field public static final CURRENCY_WON:Ljava/lang/String; = "WON"

.field public static final MARKET_APPLE:Ljava/lang/String; = "APPLE"

.field public static final MARKET_GOOGLE:Ljava/lang/String; = "GOOGLE"

.field public static final MARKET_NONE:Ljava/lang/String; = "NONE"

.field public static final MARKET_ONE:Ljava/lang/String; = "ONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static send(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->m()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Lcom/naver/glink/android/sdk/Statistics$1;

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/Statistics$1;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->gameStatisticsRequest(Ljava/util/Map;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method public static sendNewUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "logType"

    const-string/jumbo v2, "NU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gameUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "market"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->send(Ljava/util/Map;)V

    return-void
.end method

.method public static sendPageVisit(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "logType"

    const-string/jumbo v2, "PV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gameUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->send(Ljava/util/Map;)V

    return-void
.end method

.method public static sendPayUser(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "logType"

    const-string/jumbo v2, "PU"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gameUserId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pay"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "productCode"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "currency"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "market"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/naver/glink/android/sdk/Statistics;->send(Ljava/util/Map;)V

    return-void
.end method

.method public static sendRequest(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0, p0}, Lcom/naver/glink/android/sdk/api/requests/Requests;->executeStaticsRequest(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
