.class Lcom/amap/api/mapcore2d/ej;
.super Lcom/amap/api/mapcore2d/en;
.source "ExceptionLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ej$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ej$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/en;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/amap/api/mapcore2d/dp;)Lcom/amap/api/mapcore2d/es;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ej;->a:Lcom/amap/api/mapcore2d/ej$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/ej$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/ej$a;-><init>(Lcom/amap/api/mapcore2d/ej;Lcom/amap/api/mapcore2d/dp;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ej;->a:Lcom/amap/api/mapcore2d/ej$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ej;->a:Lcom/amap/api/mapcore2d/ej$a;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/amap/api/mapcore2d/df;->b(Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v0, Lcom/amap/api/mapcore2d/ek;->b:Ljava/lang/String;

    return-object v0
.end method
