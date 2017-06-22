.class public Lcom/samsung/vip/engine/shape/PrimitiveBezierList;
.super Ljava/lang/Object;
.source "PrimitiveBezierList.java"


# instance fields
.field public BezierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveBezier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBezierList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveBezier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->BezierList:Ljava/util/List;

    return-object v0
.end method

.method public setBezierList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/vip/engine/shape/PrimitiveBezier;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vip/engine/shape/PrimitiveBezierList;->BezierList:Ljava/util/List;

    return-void
.end method
