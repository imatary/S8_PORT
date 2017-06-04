.class Lcom/sec/samsung/gallery/drawer/GalleryTab$4;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnClickListener(I)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "GalleryTab"

    const-string/jumbo v2, "TABSWIPE_Tab click passed due to sliding animation."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->findTabIndexByPosition(I)I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1200(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I

    move-result v0

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findTabIndexByPosition, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tabIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->selectItem(I)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1600(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    # getter for: Lcom/sec/samsung/gallery/drawer/GalleryTab;->mTabIndicator:Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;
    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setCurrentPosition(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$4;->val$position:I

    # invokes: Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1700(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    goto :goto_0
.end method
