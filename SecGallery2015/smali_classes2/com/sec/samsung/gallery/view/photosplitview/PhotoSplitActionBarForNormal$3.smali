.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->setTitle(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;

.field final synthetic val$numberOfItemsInAlbum:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->val$albumName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->val$numberOfItemsInAlbum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->val$albumName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->val$numberOfItemsInAlbum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PhtoSpltActnBarForNorml"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
