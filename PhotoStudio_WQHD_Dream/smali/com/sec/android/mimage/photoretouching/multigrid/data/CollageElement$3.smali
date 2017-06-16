.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$3;
.super Ljava/lang/Object;
.source "CollageElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDecodeFinished(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    return-void
.end method
