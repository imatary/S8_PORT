.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


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

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->resetPreviewView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1002(J)J

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->screenTurnedOff()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->updateIsAdminWallpaper()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->screenTurnedOn()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$602(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->unbindWallpaperService()V

    goto :goto_0
.end method
