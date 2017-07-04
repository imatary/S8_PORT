.class Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/HdmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/HdmiManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/HdmiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/HdmiManager;Lcom/sec/android/gallery3d/app/HdmiManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;-><init>(Lcom/sec/android/gallery3d/app/HdmiManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$102(Lcom/sec/android/gallery3d/app/HdmiManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const-string/jumbo v0, "HdmiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received plugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$100(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$200(Lcom/sec/android/gallery3d/app/HdmiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/HdmiManager$HdmiReceiver;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$200(Lcom/sec/android/gallery3d/app/HdmiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
