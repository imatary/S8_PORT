.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperLiveViewController"


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

.field private mContext:Landroid/content/Context;

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->initConnection()V

    return-void
.end method

.method private initConnection()V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "KeyguardWallpaperLiveViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initConnection isUltraPowerSavingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-nez v1, :cond_4

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "just_lock_livewallpaper_package_name"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "just_lock_livewallpaper_class_name"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->connect()Z

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->disconnect()V

    iput-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
