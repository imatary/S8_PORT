.class Lcom/sec/samsung/gallery/drawer/GalleryTab$5;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->setOnKeyListener(I)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GalleryTab"

    const-string/jumbo v3, "TABSWIPE_Tab key passed due to sliding animation."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1200(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)I

    move-result v0

    const-string/jumbo v1, "GalleryTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findTabIndexByPosition, position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1600(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$900(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabIndicator;->setCurrentPosition(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$5;->val$position:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$1700(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
