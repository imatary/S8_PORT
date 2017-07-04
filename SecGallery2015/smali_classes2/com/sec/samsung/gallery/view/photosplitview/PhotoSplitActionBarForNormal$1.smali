.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$1;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->setActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->setTitle(Ljava/lang/String;)V

    return-void
.end method
