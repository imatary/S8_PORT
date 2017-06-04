.class Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;
.super Ljava/lang/Object;
.source "DrawerGroupDefaultExpansion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionGroup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

.field final synthetic val$checkType:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->val$checkType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    # getter for: Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    # getter for: Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->this$0:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    # getter for: Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;->val$checkType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
