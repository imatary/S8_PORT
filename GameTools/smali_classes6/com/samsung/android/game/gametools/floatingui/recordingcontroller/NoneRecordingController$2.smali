.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$2;
.super Ljava/util/TimerTask;
.source "NoneRecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createRecordingTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createRecordingNotification()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->access$100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;)V

    return-void
.end method
