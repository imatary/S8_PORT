.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
.super Landroid/content/BroadcastReceiver;
.source "RecordingModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;
    }
.end annotation


# static fields
.field public static final STATE_DESTROY_END:I = 0x4

.field public static final STATE_DESTROY_END_WITH_EXCEPTION:I = 0x5

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_START:I = 0x1

.field public static final STATE_START_ANIM_END:I = 0x2

.field public static final STATE_STOP:I = 0x3

.field private static final isDebug:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBaseTime:J

.field mContext:Landroid/content/Context;

.field public mGameName:Ljava/lang/String;

.field private mGametoolsService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field public mPkgName:Ljava/lang/String;

.field private mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

.field private mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

.field private volatile mRecordingState:I

.field private mScreenWasLeftException:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    const-string/jumbo v0, "RecordingModule"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGametoolsService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "RecordingModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPkgname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    return-object v0
.end method

.method private createController()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getCreateStatus()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "start createController"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGametoolsService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->createController(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRecordingNotification()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3085

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string/jumbo v1, "RecordingModule"

    const-string/jumbo v2, "cancelRecordingNotification"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "RecordingModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged() called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getCreateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->calculateDisplaySize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->repositionRecButton()V

    goto :goto_0
.end method

.method public createRecordButtonAndStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    const-string/jumbo v1, "RecordingModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>> createRecordButtonAndStart pkgname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " gn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createController()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public createRecordingNotification()V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v5, Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-class v9, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v8, "type"

    const/4 v9, 0x7

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    invoke-static {v8, v12, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mBaseTime:J

    sub-long v0, v8, v10

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    long-to-int v7, v8

    div-int/lit8 v3, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->stat_gametools_nmr:I

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    sget v9, Lcom/samsung/android/game/gametools/floatingui/R$string;->DREAM_GH_BODY_TAP_TO_STOP_RECORDING:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/16 v8, 0x3085

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public createRecordingTimerNotification()V
    .locals 6

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v2, "createRecordingTimerNotification"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mBaseTime:J

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public getFloatingMovingCnt()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getmFloatingMoveCnt()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "SA_ mRecordingController is null"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecordingController()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    return v0
.end method

.method public isScreenWasLeftException()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    return v0
.end method

.method public onDestroyEnd()V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "onDestroyEnd"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-interface {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;->onDestroyEnd()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->cancelRecordingNotification()V

    return-void
.end method

.method public onDestroyEndWithException(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "onDestroyEndWithException"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;->onDestroyEndWithException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->cancelRecordingNotification()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;

    move-result-object v6

    iget-object v6, v6, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-virtual {v6}, Lcom/gdg/recordinglib/GameRecordingMgr;->getmAudioUtil()Lcom/gdg/recordinglib/v2/audio/AudioUtil;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_3

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getHeadSetStatePluged()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v5, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    :cond_2
    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->updateInappRecordCurrentVolume(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_6

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_4

    :goto_1
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v5, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    sget v6, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    :goto_2
    invoke-virtual {v1, v0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v5, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v6, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->setHeadSetStatePluged(Z)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    goto/16 :goto_0

    :cond_7
    if-eq v4, v0, :cond_0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->requestNewAudioStatus(Z)Z

    :cond_8
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$1;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;Lcom/gdg/recordinglib/v2/audio/AudioUtil;)V

    const-wide/16 v8, 0x9c4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onRecordingStart()V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "onRecordingStart"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-interface {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;->onRecordingStart()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createRecordingTimerNotification()V

    :cond_1
    return-void
.end method

.method public onRecordingStartAnimEnd()V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "onRecordingStartAnimEnd"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-interface {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;->onRecordingStartAnimEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "error between STATE_START and STATE_START_ANIM_END"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRecordingStop(JI)V
    .locals 3

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "onRecordingStop"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingState:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;->onRecordingStop(JI)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->cancelRecordingNotification()V

    return-void
.end method

.method public setRecordingListener(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule$RecordingListener;

    return-void
.end method

.method public setScreenWasLeftException(Z)V
    .locals 3

    const-string/jumbo v0, "RecordingModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenWasLeftException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    return-void
.end method

.method public stopRecordingModule(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getCreateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->destroyController(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->stopRecordingController()V

    goto :goto_0
.end method
