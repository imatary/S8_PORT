.class public Lcom/amap/api/mapcore2d/dp;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore2d/dn;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore2d/dn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    return-void
.end method

.method private a(I)Lcom/amap/api/mapcore2d/dq;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/amap/api/mapcore2d/dl;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dl;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/amap/api/mapcore2d/do;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/do;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/amap/api/mapcore2d/dk;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dk;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/amap/api/mapcore2d/dr;Lcom/amap/api/mapcore2d/dq;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/dq;->a(Lcom/amap/api/mapcore2d/dr;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore2d/dn;->a(Lcom/amap/api/mapcore2d/du;)V

    return-void
.end method

.method private b(Lcom/amap/api/mapcore2d/dr;Lcom/amap/api/mapcore2d/dq;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v0, v1, p2}, Lcom/amap/api/mapcore2d/dn;->c(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/dq;->a(Lcom/amap/api/mapcore2d/dr;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore2d/dn;->a(Lcom/amap/api/mapcore2d/du;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/dr;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dr;->a()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dr;->d()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/dr;->b(I)V

    :goto_1
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/dq;->a(Lcom/amap/api/mapcore2d/dr;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v0, v1, p2}, Lcom/amap/api/mapcore2d/dn;->b(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/dr;->b(I)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dp;->a(I)Lcom/amap/api/mapcore2d/dq;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V

    return-void
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/dr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dp;->a(I)Lcom/amap/api/mapcore2d/dq;

    move-result-object v1

    invoke-static {p1}, Lcom/amap/api/mapcore2d/dq;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/mapcore2d/dn;->c(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LogDB"

    const-string/jumbo v3, "ByState"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/dr;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dp;->a(I)Lcom/amap/api/mapcore2d/dq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/du;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/dr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:Lcom/amap/api/mapcore2d/dn;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/mapcore2d/dn;->b(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dp;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogDB"

    const-string/jumbo v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/dr;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/dp;->a(I)Lcom/amap/api/mapcore2d/dq;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/dp;->a(Lcom/amap/api/mapcore2d/dr;Lcom/amap/api/mapcore2d/dq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/dp;->b(Lcom/amap/api/mapcore2d/dr;Lcom/amap/api/mapcore2d/dq;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore2d/dp;->b(Lcom/amap/api/mapcore2d/dr;Lcom/amap/api/mapcore2d/dq;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dp;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
