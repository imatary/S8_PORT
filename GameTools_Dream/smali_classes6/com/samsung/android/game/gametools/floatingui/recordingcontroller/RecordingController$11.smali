.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

.field final synthetic val$arg1:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;->val$arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    return-void
.end method
