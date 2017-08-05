.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 v1, 0x1

    const/16 v4, 0x65

    const/16 v3, 0x64

    const/16 v5, 0x66

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p2, :cond_1

    const-string/jumbo v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v0, "lock_screen_clock_size"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_8

    :goto_4
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$602(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    :cond_a
    const-string/jumbo v0, "easy_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_3
.end method
