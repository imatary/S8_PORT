.class Lcom/sec/samsung/gallery/drawer/GalleryTab$3;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnGenericMotionListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v10

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->val$position:I

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->findTabIndexByPosition(I)I
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1200(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->getMTPDeviceName()Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1300(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0466

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabSpecsCopy:Ljava/util/List;
    invoke-static {v9}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1500(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->clearAccessibilityFocus()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$3;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    sget-object v3, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/drawer/StateInfo;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->getStateTitle(Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1400(Lcom/sec/samsung/gallery/drawer/GalleryTab;Lcom/sec/samsung/gallery/drawer/StateInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
