.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onConfigurationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateRatioPopupPosition()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$900(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateBorderLayoutParams()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$9;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayoutPopupPosition()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1000(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    return-void
.end method
