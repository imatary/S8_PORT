.class public abstract enum Lcom/naver/glink/android/sdk/api/request/RequestBuilders;
.super Ljava/lang/Enum;
.source "RequestBuilders.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naver/glink/android/sdk/api/request/RequestBuilders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

.field public static final enum CAFE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

.field public static final enum COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

.field public static final enum COMMON:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

.field public static final enum LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

.field public static final enum PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$1;

    const-string/jumbo v1, "COMMON"

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMON:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$2;

    const-string/jumbo v1, "CAFE"

    invoke-direct {v0, v1, v3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->CAFE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$3;

    const-string/jumbo v1, "PLUG"

    invoke-direct {v0, v1, v4}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$4;

    const-string/jumbo v1, "COMMENT"

    invoke-direct {v0, v1, v5}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    new-instance v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$5;

    const-string/jumbo v1, "LIKE"

    invoke-direct {v0, v1, v6}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMON:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    aput-object v1, v0, v2

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->CAFE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->PLUG:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->COMMENT:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->LIKE:Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    aput-object v1, v0, v6

    sput-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->$VALUES:[Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/naver/glink/android/sdk/api/request/RequestBuilders$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/RequestBuilders;
    .locals 1

    const-class v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    return-object v0
.end method

.method public static values()[Lcom/naver/glink/android/sdk/api/request/RequestBuilders;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->$VALUES:[Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    invoke-virtual {v0}, [Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naver/glink/android/sdk/api/request/RequestBuilders;

    return-object v0
.end method


# virtual methods
.method public builder(Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public abstract builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation
.end method

.method public builder(Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/RequestBuilder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/naver/glink/android/sdk/api/Response;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/api/request/RequestBuilders;->builder(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->method(I)Lcom/naver/glink/android/sdk/api/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/RequestBuilder;->toRequest()Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    return-object v0
.end method
