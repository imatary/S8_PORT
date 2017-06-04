.class public abstract Lcom/amap/api/mapcore2d/ey;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field b:I

.field c:I

.field d:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore2d/ey;->b:I

    iput v0, p0, Lcom/amap/api/mapcore2d/ey;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/ey;->b:I

    return-void
.end method

.method public final a(Lorg/apache/http/HttpHost;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ey;->d:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public a_()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/ey;->c:I

    return-void
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lorg/apache/http/HttpEntity;
.end method
