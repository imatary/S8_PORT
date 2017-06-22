.class public Lcom/samsung/vip/engine/shape/PrimitivePolygon;
.super Ljava/lang/Object;
.source "PrimitivePolygon.java"


# instance fields
.field public points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->points:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setPoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitivePolygon;->points:Ljava/util/ArrayList;

    return-void
.end method
