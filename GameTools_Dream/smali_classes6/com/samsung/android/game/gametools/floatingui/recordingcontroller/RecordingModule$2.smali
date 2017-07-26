.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$2;
.super Ljava/util/TimerTask;
.source "RecordingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createRecordingTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createRecordingNotification()V

    return-void
.end method
