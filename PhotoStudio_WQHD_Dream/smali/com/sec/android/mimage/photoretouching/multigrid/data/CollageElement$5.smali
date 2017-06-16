.class Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$600(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberFail:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$602(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberLoading:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->numberInput:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$702(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;I)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mEmptyItem:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$800(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->getCurrentStyle()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->getCurrentLayout(IILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mManager:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement$5;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconVisibility(Landroid/content/Context;I)V

    goto :goto_0
.end method
