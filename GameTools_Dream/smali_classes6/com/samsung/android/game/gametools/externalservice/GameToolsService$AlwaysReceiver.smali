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
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "GameTools Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v7, v7, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v7, "GameTools Service"

    const-string/jumbo v8, "Phone LISTEN_CALL_STATE"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v7, "com.samsung.android.game.gametools.onclicknoti"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->closePermission_Noticard(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->gotoPermission_SettingActivity(Landroid/content/Context;)V

    :cond_1
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->isRecording()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v7, "level"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v7, v2, 0x64

    div-int v3, v7, v4

    const-string/jumbo v7, "GameTools Service"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Battery : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " recoding = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->isRecording()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$400()I

    move-result v7

    if-gt v3, v7, :cond_4

    const-string/jumbo v7, "GameTools Service"

    const-string/jumbo v8, "recording stopped : low battery"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_DUE_TO_LOW_BATTERY_RECORDING_SAVED_AUTOMATICALLY:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v7}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$500(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->setScreenWasLeftException(Z)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService(Z)V

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v7}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$500(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_5

    const-string/jumbo v7, "GameTools Service"

    const-string/jumbo v8, "Intent.ACTION_SCREEN_OFF"

    invoke-static {v7, v8}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v7}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$500(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
