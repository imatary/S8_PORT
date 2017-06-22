.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3$1;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->onOtherAppSelected(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method
