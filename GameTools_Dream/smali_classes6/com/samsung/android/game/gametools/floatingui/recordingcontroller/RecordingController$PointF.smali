.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
.super Ljava/lang/Object;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointF"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iget v0, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    return-void
.end method


# virtual methods
.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    return-void
.end method

.method public set(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iget v0, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    return-void
.end method
