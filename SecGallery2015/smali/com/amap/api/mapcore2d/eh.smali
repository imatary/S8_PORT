.class Lcom/amap/api/mapcore2d/eh;
.super Lcom/amap/api/mapcore2d/en;
.source "CrashLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/eh$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore2d/eh$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/en;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/amap/api/mapcore2d/dp;)Lcom/amap/api/mapcore2d/es;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eh;->a:Lcom/amap/api/mapcore2d/eh$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/eh$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/eh$a;-><init>(Lcom/amap/api/mapcore2d/eh;Lcom/amap/api/mapcore2d/dp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/eh;->a:Lcom/amap/api/mapcore2d/eh$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eh;->a:Lcom/amap/api/mapcore2d/eh$a;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/eo;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/df;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/dh;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/ek;->c:Ljava/lang/String;

    return-object v0
.end method
