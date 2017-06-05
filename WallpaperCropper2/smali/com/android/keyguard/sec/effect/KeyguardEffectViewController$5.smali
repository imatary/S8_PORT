.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service connected (yay!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    new-instance v1, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    invoke-static {p2}, Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;-><init>(Lcom/android/keyguard/sec/wallpaper/IKeyguardWallpaperService;)V

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$KeyguardWallpaperShowCallback;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->setKeyguardWallpaperShowCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->executeCommand(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while isDrawFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "RemoteException occured while show()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mAffordanceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_2

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardEffectViewController"

    const-string/jumbo v1, "*** Keyguard wallpaper service disconnected (boo!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mKeyguardWallpaperService:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperServiceWrapper;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$5;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mScreenOnCallback:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$ScreenOnCallback;

    return-void
.end method
