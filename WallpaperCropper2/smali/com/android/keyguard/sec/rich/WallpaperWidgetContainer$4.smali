.class Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v1, "unknown msg type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$300(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v2, "MSG_EXPANDING"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$400(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v1, "MSG_EXPANDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$500(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0, v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$600(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;I)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v3, "MSG_PINUP"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.keyguardwallpaperupdator.wallpaper_pinup"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "req"

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v3}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$000(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_3
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$800(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;Z)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_3

    :pswitch_4
    const-string/jumbo v0, "WallpaperWidgetContainer"

    const-string/jumbo v1, "MSG_NEXT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.keyguardwallpaperupdator.next_wallpaper_changing"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer$4;->this$0:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-static {v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->access$700(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
