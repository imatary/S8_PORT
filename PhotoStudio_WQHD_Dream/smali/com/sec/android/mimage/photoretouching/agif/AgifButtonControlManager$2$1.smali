.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setFrameCenter()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    :cond_0
    return-void
.end method
