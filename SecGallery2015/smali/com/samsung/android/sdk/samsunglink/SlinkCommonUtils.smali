.class public Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;
.super Ljava/lang/Object;
.source "SlinkCommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSInstance:Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;


# instance fields
.field private mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mSInstance:Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mSInstance:Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mSInstance:Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAppIdToIntent(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getClientApp(I)Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "::addAppIdToIntent() ClientApp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.sdk.samsunglink.APPLICATION_ID"

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mClientApp:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public getClientApp(I)Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getProcessNameFromPid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::getClientApp() : Unkown Client App"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "::getClientApp() : processName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.pcw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_UI_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.gallery3d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->GALLERY_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.everglades.video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->VIDEO_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->MUSIC_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.example"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->SLINK_PLATFORM_SAMPLE_APP:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::getClientApp() : Unkown Client App"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;->NONE:Lcom/samsung/android/sdk/samsunglink/SlinkConstants$ClientApp;

    goto :goto_0
.end method

.method public getProcessId()I
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getProcessNameFromPid(I)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isMOSAndLater()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoragePermissionAvailable()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->isMOSAndLater()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::isStoragePermissionAvailable - EXTERNAL_STORAGE Permission available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "::isStoragePermissionAvailable - EXTERNAL_STORAGE Permission is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
