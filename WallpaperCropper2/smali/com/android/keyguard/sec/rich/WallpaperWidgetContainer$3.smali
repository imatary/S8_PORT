.class Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->init()V

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$200(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$3;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$100(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
