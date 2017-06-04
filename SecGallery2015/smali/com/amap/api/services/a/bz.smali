.class public Lcom/amap/api/services/a/bz;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bp;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/services/a/bz;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/services/a/bz;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/amap/api/services/a/bz;->a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bp;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bp;

    const-class v2, Lcom/amap/api/services/a/bw;

    invoke-static {v2}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/Class;)Lcom/amap/api/services/a/bo;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-nez p2, :cond_0

    const-string/jumbo v2, "SDKDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/bd;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bd;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    const-class v3, Lcom/amap/api/services/a/bd;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
