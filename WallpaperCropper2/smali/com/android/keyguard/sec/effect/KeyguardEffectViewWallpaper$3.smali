.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "WallpaperWidget"

    const-string/jumbo v1, "dispatchDraw() mKeyguardWindowCallback.onShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    goto :goto_0
.end method
