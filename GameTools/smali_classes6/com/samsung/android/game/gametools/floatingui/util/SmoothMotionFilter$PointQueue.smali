.class Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;
.super Ljava/util/LinkedList;
.source "SmoothMotionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->size:I

    return-void
.end method


# virtual methods
.method public offer(Landroid/graphics/PointF;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->size:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->poll()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->offer(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method
