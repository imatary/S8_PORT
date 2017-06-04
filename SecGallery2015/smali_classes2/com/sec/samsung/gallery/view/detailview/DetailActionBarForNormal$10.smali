.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;
.super Ljava/lang/Object;
.source "DetailActionBarForNormal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v3

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;ZZI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const-string/jumbo v1, "DVMR"

    const-string/jumbo v2, "Move to KNOX"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
