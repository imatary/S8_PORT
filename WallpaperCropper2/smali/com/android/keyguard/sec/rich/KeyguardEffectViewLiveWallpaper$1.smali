.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;
.super Landroid/os/Handler;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->disconnect()V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$002(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
