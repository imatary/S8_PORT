.class public Lcom/amap/api/mapcore2d/db;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/amap/api/mapcore2d/dh;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore2d/db;->a:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/db;->e:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/db;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v0, "resType"

    const-string/jumbo v2, "json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "encode"

    const-string/jumbo v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ec"

    const-string/jumbo v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/mapcore2d/dc;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "resType=json&encode=UTF-8&ec=1"

    invoke-static {v2}, Lcom/amap/api/mapcore2d/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scode"

    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore2d/dc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "gParams"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;)Z
    .locals 7

    const-class v2, Lcom/amap/api/mapcore2d/db;

    monitor-enter v2

    :try_start_0
    sput-object p1, Lcom/amap/api/mapcore2d/db;->c:Lcom/amap/api/mapcore2d/dh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/db;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "Accept-Encoding"

    const-string/jumbo v5, "gzip"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "Connection"

    const-string/jumbo v5, "Keep-Alive"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "User-Agent"

    sget-object v5, Lcom/amap/api/mapcore2d/db;->c:Lcom/amap/api/mapcore2d/dh;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/dh;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "X-INFO"

    sget-object v5, Lcom/amap/api/mapcore2d/db;->c:Lcom/amap/api/mapcore2d/dh;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/amap/api/mapcore2d/dc;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/dh;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "ia"

    const-string/jumbo v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "key"

    invoke-static {p0}, Lcom/amap/api/mapcore2d/da;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/mapcore2d/ex;->a()Lcom/amap/api/mapcore2d/ex;

    move-result-object v4

    new-instance v5, Lcom/amap/api/mapcore2d/dj;

    invoke-direct {v5}, Lcom/amap/api/mapcore2d/dj;-><init>()V

    invoke-static {p0}, Lcom/amap/api/mapcore2d/dg;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/mapcore2d/dj;->a(Lorg/apache/http/HttpHost;)V

    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/dj;->a(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/amap/api/mapcore2d/db;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/amap/api/mapcore2d/dj;->b(Ljava/util/Map;)V

    invoke-virtual {v5, v1}, Lcom/amap/api/mapcore2d/dj;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/ey;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/db;->a([B)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v2

    return v0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "Auth"

    const-string/jumbo v4, "getAuth"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    sput v2, Lcom/amap/api/mapcore2d/db;->a:I

    :cond_2
    :goto_1
    const-string/jumbo v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    :cond_3
    sget v2, Lcom/amap/api/mapcore2d/db;->a:I

    if-nez v2, :cond_4

    const-string/jumbo v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/mapcore2d/db;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v2, Lcom/amap/api/mapcore2d/db;->a:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_2

    const/4 v2, 0x0

    sput v2, Lcom/amap/api/mapcore2d/db;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
