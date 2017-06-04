.class Lcom/sec/android/gallery3d/app/HdmiManager$1;
.super Landroid/os/Handler;
.source "HdmiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/HdmiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/HdmiManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/HdmiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/HdmiManager$1;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/HdmiManager$1;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    # getter for: Lcom/sec/android/gallery3d/app/HdmiManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$000(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/HdmiManager$1;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    # getter for: Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$100(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/HdmiManager$1;->this$0:Lcom/sec/android/gallery3d/app/HdmiManager;

    # getter for: Lcom/sec/android/gallery3d/app/HdmiManager;->sIsPlugged:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/HdmiManager;->access$100(Lcom/sec/android/gallery3d/app/HdmiManager;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/app/HdmiManager$OnHdmiConnectListener;->onHdmiConnect(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
