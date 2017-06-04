.class Lcom/amap/api/mapcore2d/t;
.super Ljava/lang/Object;
.source "CameraChangeFinishObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/t$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/t;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/t$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore2d/t;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/t;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/t;->a:Lcom/amap/api/mapcore2d/t;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/t;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/t;->a:Lcom/amap/api/mapcore2d/t;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/t$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/t$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/t$a;->O()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/t$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
