.class public Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;
.super Landroid/app/IntentService;
.source "RecordingCtlIntentService.java"


# static fields
.field public static final NONE:I = -0x3e7

.field public static final STOP_RECORD:I = 0x7d0

.field public static TAG:Ljava/lang/String;


# instance fields
.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RecordingCtlIntentService"

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->mType:I

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    :try_start_0
    const-string/jumbo v3, "type"

    const/16 v4, -0x3e7

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->mType:I

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TYPE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->mType:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v3, "4044"

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->requestStopRecord()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sem_statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.game.gametools.GAMETOOLS_SERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.game.gametools"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "type"

    const/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
