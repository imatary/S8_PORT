.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;
.super Ljava/util/LinkedList;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;",
        ">;"
    }
.end annotation


# instance fields
.field size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->size:I

    return-void
.end method


# virtual methods
.method public compute()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v3, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    sub-float/2addr v3, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v4, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    sub-float v2, v4, v2

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public offer(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->size:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->poll()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->offer(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)Z

    move-result v0

    return v0
.end method
