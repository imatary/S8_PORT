.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;
.super Landroid/database/ContentObserver;
.source "DetailActionBarForNormal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v2, 0x7f1202a0

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->isRotateSettingOff()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->handleForceRotate()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const-string/jumbo v2, "CNRT"

    const-string/jumbo v3, "System auto rotate on"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
