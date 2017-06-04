.class public Lcom/amap/api/mapcore2d/dv;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dn;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/dv;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dv;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dv;->a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/dn;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/dn;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dn;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore2d/dx;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dv;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dv;->a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    :cond_0
    const-string/jumbo v0, "1=1"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    new-instance v3, Lcom/amap/api/mapcore2d/dw;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/dw;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/mapcore2d/dn;->c(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dx;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UpdateLogDB"

    const-string/jumbo v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/dx;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dv;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/dv;->a(Landroid/content/Context;)Lcom/amap/api/mapcore2d/dn;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/dw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dw;-><init>()V

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/Object;)V

    const-string/jumbo v1, "1=1"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    new-instance v3, Lcom/amap/api/mapcore2d/dw;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/dw;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/mapcore2d/dn;->c(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/dn;->a(Lcom/amap/api/mapcore2d/du;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UpdateLogDB"

    const-string/jumbo v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dv;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore2d/dn;->b(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
