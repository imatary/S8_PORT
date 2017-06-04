.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
.super Ljava/lang/Object;
.source "RecordingModule.java"


# static fields
.field private static final isDebug:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field public mGameName:Ljava/lang/String;

.field private mGametoolsService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field public mPkgName:Ljava/lang/String;

.field private mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

.field private mScreenWasLeftException:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

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

.method private changeRecordGuideOrientation(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "RecordingModule"

    const-string/jumbo v3, "changeRecordGuideOrientation"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "record_information"

    invoke-static {v2, v3, v4}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "record_check_video"

    invoke-static {v2, v3, v4}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    :cond_0
    return-void
.end method

.method private createController()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "mGCController.isCreated()"

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
.method public closeRecordButton()V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "closeRecordButton"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->destroyController()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    :cond_0
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

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isCreated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->changeRecordGuideOrientation(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->calculateDisplaySize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->repositionRecButton()V

    goto :goto_0
.end method

.method public createRecordButton(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mPkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGameName:Ljava/lang/String;

    const-string/jumbo v1, "RecordingModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>> createRecordButton pkgname = "

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

.method public exit()V
    .locals 2

    const-string/jumbo v0, "RecordingModule"

    const-string/jumbo v1, "EXIT called!"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishModule()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->closeRecordButton()V

    return-void
.end method

.method public getRecordingController()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mRecordingController:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    return-object v0
.end method

.method public isScreenWasLeftException()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    return v0
.end method

.method public setScreenWasLeftException(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mScreenWasLeftException:Z

    return-void
.end method

.method public showToolkit()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->mGametoolsService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit(I)V

    return-void
.end method
