.class Lcom/amap/api/mapcore2d/ac$a;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ac;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ac$a;->a:Lcom/amap/api/mapcore2d/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ac;Lcom/amap/api/mapcore2d/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ac$a;-><init>(Lcom/amap/api/mapcore2d/ac;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const-string/jumbo v1, "compare"

    check-cast p1, Lcom/amap/api/mapcore2d/am;

    check-cast p2, Lcom/amap/api/mapcore2d/am;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/am;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/am;->d()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/am;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/am;->d()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GLOverlayLayer"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
