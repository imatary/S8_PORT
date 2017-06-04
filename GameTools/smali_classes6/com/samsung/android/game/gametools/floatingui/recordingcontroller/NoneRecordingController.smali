.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;
.super Ljava/lang/Object;
.source "NoneRecordingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;,
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoneRecordingController"

.field private static final mHandler:Landroid/os/Handler;

.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;


# instance fields
.field private mBaseTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mBaseTime:Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doSomeThing(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createRecordingNotification()V

    return-void
.end method

.method private cancelRecordingNotification()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3085

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string/jumbo v1, "NoneRecordingController"

    const-string/jumbo v2, "cancelRecordingNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createRecordingNotification()V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    const-class v10, Lcom/samsung/android/game/gametools/floatingui/internalservice/RecordingCtlIntentService;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "type"

    const/16 v10, 0x7d0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mBaseTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v0, v10, v12

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    long-to-int v7, v10

    div-int/lit8 v4, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    new-instance v9, Landroid/app/Notification$Action$Builder;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_STOP_ABB:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->gametools_noti:I

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_MBODY_TAP_HERE_TO_STOP_AND_SAVE_RECORDING:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/16 v9, 0x3085

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createRecordingTimerNotification()V
    .locals 6

    const-string/jumbo v0, "NoneRecordingController"

    const-string/jumbo v2, "createRecordingTimerNotification"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mBaseTime:Ljava/lang/Long;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private createSavedNotification()V
    .locals 2

    const-string/jumbo v0, "NoneRecordingController"

    const-string/jumbo v1, "Saved"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method private doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doSomeThing(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V
    .locals 6

    const-string/jumbo v0, "NoneRecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$3;->$SwitchMap$com$samsung$android$game$gametools$floatingui$recordingcontroller$NoneRecordingController$ACTION:[I

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createRecordingTimerNotification()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createSavedNotification()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->cancelRecordingNotification()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->createSavingNotification()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT23"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->cancelRecordingNotification()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mInstance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    iput-object p0, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public cancelByError()V
    .locals 2

    const-string/jumbo v0, "NoneRecordingController"

    const-string/jumbo v1, "cancelByError"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method public createSavingNotification()V
    .locals 2

    const-string/jumbo v0, "NoneRecordingController"

    const-string/jumbo v1, "Saving"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentState()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    return-void
.end method

.method public recordButtonClicked()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method public recordInitCompleted()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method public requestStopRecord()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method public scanFinished()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->SAVE_COMPLETED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method

.method public setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V
    .locals 3

    const-string/jumbo v0, "NoneRecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PREV STATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "NoneRecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "STATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_PREPARERING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->READY:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->STOP_RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne v0, v1, :cond_6

    :cond_5
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->RECORDING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne v0, v1, :cond_8

    :cond_7
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->SAVE_COMPLETED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_SAVED:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_9

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;->NOTI_CANCEL:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->doAction(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$ACTION;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    :cond_9
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->IDLE:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    if-ne p1, v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->mCurrentState:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    goto :goto_0
.end method

.method public startScan()V
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;->START_SAVING:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->setCurrentState(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController$STATE;)V

    return-void
.end method
