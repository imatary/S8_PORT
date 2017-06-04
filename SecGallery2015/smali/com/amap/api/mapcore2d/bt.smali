.class abstract Lcom/amap/api/mapcore2d/bt;
.super Lcom/amap/api/mapcore2d/ey;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/ey;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ey;-><init>()V

    iput v1, p0, Lcom/amap/api/mapcore2d/bt;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/bt;->f:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bt;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/bt;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bt;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bt;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v3, "GetDataMaythrow"

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/bt;->e:I

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/amap/api/mapcore2d/ex;->a(Z)Lcom/amap/api/mapcore2d/ex;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/ex;->b(Lcom/amap/api/mapcore2d/ey;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/bt;->b([B)Ljava/lang/Object;

    move-result-object v1

    iget v0, p0, Lcom/amap/api/mapcore2d/bt;->e:I
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "ProtocalHandler"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/amap/api/mapcore2d/bt;->e:I

    if-ge v0, v4, :cond_0

    :try_start_1
    iget v2, p0, Lcom/amap/api/mapcore2d/bt;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Lcom/amap/api/maps2d/AMapException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->f()Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/amap/api/mapcore2d/bt;->e:I

    if-ge v0, v4, :cond_1

    :try_start_2
    iget v4, p0, Lcom/amap/api/mapcore2d/bt;->f:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    const-string/jumbo v4, "ProtocalHandler"

    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cz;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cz;->printStackTrace()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->f()Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bt;->g()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected abstract a([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
