.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    }
.end annotation


# static fields
.field private static final MSG_WALLPAPER_TYPE_CHANGED:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperMediator"

.field private static final TEST_MODE:Z


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

.field private final mHandler:Landroid/os/Handler;

.field private mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

.field private mWallpaperType:I

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$1;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;-><init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->setContentObserver()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleWallpaperTypeChanged()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    if-eq v2, v0, :cond_4

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v0, "KeyguardWallpaperMediator"

    const-string/jumbo v1, "illegal wallpaper type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iput v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "KeyguardWallpaperMediator"

    const-string/jumbo v1, "Reset white_lockscreen_wallpaper due to !WALLPAPER_TYPE_FILE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-nez v0, :cond_6

    :goto_3
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->cleanUp()V

    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_7

    :goto_4
    new-instance v0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->cleanUp()V

    iput-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setContentObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mLiveController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public executeCommand(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->executeCommand(I)V

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleUnlock(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleUnlock(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public removeWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->removeViewWindow()V

    goto :goto_0
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->sendTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mController:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    goto :goto_0
.end method
