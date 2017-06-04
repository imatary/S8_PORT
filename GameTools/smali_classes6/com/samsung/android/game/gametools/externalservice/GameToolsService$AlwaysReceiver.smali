.class Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameToolsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlwaysReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "GameTools Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onReceive action="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v17, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    sget-object v17, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v16 .. v18}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v17, "GameTools Service"

    const-string/jumbo v18, "Phone LISTEN_CALL_STATE"

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v17, "com.samsung.android.game.gametools.onclicknoti"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->closePermission_Noticard(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->gotoPermission_SettingActivity(Landroid/content/Context;)V

    :cond_1
    const-string/jumbo v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->isRecording()Z

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v17, "level"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v17, "scale"

    const/16 v18, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    mul-int/lit8 v17, v7, 0x64

    div-int v12, v17, v13

    const-string/jumbo v17, "GameTools Service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Battery : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " recoding = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->isRecording()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->TARGET_BATTERY_PERCENTAGE:I
    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$600()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    sget v18, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_DUE_TO_LOW_BATTERY_RECORDING_SAVED_AUTOMATICALLY:I

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$700(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->setScreenWasLeftException(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$700(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    invoke-static/range {v17 .. v17}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$700(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->getRecordingController()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/gdg/recordinglib/GameRecordingMgr;->getmAudioUtil()Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "android.intent.action.SCREEN_OFF"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isCreated()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "GameTools Service"

    const-string/jumbo v18, "Intent.ACTION_SCREEN_OFF"

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->onActionScreen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "android.intent.action.SCREEN_ON"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isCreated()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "GameTools Service"

    const-string/jumbo v18, "Intent.ACTION_SCREEN_ON"

    invoke-static/range {v17 .. v18}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->onActionScreen(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecorded()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v17, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eq v10, v11, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getHeadSetStatePluged()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-virtual {v9, v10}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    :cond_7
    if-eqz v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v10, v0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->updateInappRecordCurrentVolume(II)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "android.intent.action.HEADSET_PLUG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecorded()Z

    move-result v17

    if-eqz v17, :cond_2

    if-eqz v8, :cond_2

    const-string/jumbo v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    if-lez v17, :cond_9

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_a

    invoke-virtual {v9, v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    sget v17, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    :goto_2
    invoke-virtual {v8, v6}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual {v9, v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    goto :goto_2

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecorded()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "android.bluetooth.profile.extra.STATE"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_c

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    if-eqz v8, :cond_2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    if-eqz v8, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    :cond_d
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v8}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver$1;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/gdg/recordinglib/v2/audio/AudioUtil;)V

    const-wide/16 v20, 0x9c4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
