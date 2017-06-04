.class Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;
.super Ljava/lang/Object;
.source "GameToolsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

.field final synthetic val$mRecordingAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

.field final synthetic val$mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/gdg/recordinglib/v2/audio/AudioUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->val$mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->val$mRecordingAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->val$mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->val$mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;->val$mRecordingAudioUtil:Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    sget v1, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    return-void
.end method
