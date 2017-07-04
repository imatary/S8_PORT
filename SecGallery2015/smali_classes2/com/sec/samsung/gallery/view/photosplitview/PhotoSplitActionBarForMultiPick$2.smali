.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForMultiPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->updateDoneButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f12007a

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnable(Landroid/view/Menu;IZ)V

    return-void
.end method
