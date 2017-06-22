.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;
.super Ljava/lang/Object;
.source "CollageElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->onDecodeFailed(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;)V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$4;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
