.class Lcom/sec/samsung/gallery/drawer/GalleryTab$7;
.super Ljava/lang/Object;
.source "GalleryTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/GalleryTab;->scrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/GalleryTab;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    iput p2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->val$index:I

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$600(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/TabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->this$0:Lcom/sec/samsung/gallery/drawer/GalleryTab;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->access$2100(Lcom/sec/samsung/gallery/drawer/GalleryTab;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "GalleryTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scrollTo() child view is null, index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/drawer/GalleryTab$7;->val$index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
