.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
