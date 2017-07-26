.class Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;
.super Landroid/telephony/PhoneStateListener;
.source "GameToolsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    const-string/jumbo v2, "GameTools Service"

    const-string/jumbo v3, "Phone CALL_STATE_RINGING "

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$200(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isVerizonDevice()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v3, p2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getUserNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->floatingToast(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$302(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_POP_UNKNOWN:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->floatingToast(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "GameTools Service"

    const-string/jumbo v3, "Phone CALL_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$300(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v2, "GameTools Service"

    const-string/jumbo v3, "Phone LISTEN_NONE"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->access$302(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Z)Z

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v2, "GameTools Service"

    const-string/jumbo v3, "Phone CALL_STATE_OFFHOOK"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
