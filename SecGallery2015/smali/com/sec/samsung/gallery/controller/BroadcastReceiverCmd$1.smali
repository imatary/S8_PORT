.class Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceiverCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final MORE_ACTIONS_PACKAGE_NAME:Ljava/lang/String; = "more_actions_package_name"


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "more_actions_package_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "BroadcastReceiverCmd"

    const-string/jumbo v6, "More options receiver!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.sec.android.gallery3d"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BroadcastReceiverCmd"

    const-string/jumbo v6, "intent action: print"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->access$000(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Landroid/content/Context;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;->access$100(Lcom/sec/samsung/gallery/controller/BroadcastReceiverCmd;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "PRINT_IMAGE"

    invoke-virtual {v5, v6, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
