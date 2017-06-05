.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "Unknown"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final BIND_SERVICE_RETRY_DELAY:I

.field private final TAG:Ljava/lang/String;

.field private mBindServiceRetryHandler:Landroid/os/Handler;

.field mConnected:Z

.field private final mContext:Landroid/content/Context;

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field private final mIntent:Landroid/content/Intent;

.field mIsConnecting:Z

.field mIsVisible:Z

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field mUnbindService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->BIND_SERVICE_RETRY_DELAY:I

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "KeyguardWallpaperConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attach Engine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    if-eqz v0, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "bind service was called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    return v4
.end method

.method public disconnect()V
    .locals 2

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0

    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const/16 v3, 0x832

    const/4 v5, -0x1

    const/4 v6, -0x1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "onServiceConnected completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v8, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsConnecting:Z

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeyguardWallpaperConnection"

    const-string/jumbo v2, "Failed attaching wallpaper; clearing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mBindServiceRetryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mUnbindService:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mConnected:Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    const-string/jumbo v1, "Engine is destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iput-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setVisibility(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardWallpaperConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-boolean v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->mIsVisible:Z

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
