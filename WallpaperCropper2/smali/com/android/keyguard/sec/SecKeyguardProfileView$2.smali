.class Lcom/android/keyguard/sec/SecKeyguardProfileView$2;
.super Landroid/database/ContentObserver;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x66

    const/16 v3, 0x65

    const/16 v2, 0x64

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p2, :cond_1

    const-string/jumbo v0, "lock_screen_date_and_year"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "show_clock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "location_name"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "my_profile_text_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "my_profile_background_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "my_profile_information"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "my_profile_font_package"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "my_profile_text_size"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method
