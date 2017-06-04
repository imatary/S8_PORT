.class Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;
.super Ljava/lang/Object;
.source "NoItemActionBarForPick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->setActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->checkUseNoItemCustomView()Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001d

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->access$400(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method
