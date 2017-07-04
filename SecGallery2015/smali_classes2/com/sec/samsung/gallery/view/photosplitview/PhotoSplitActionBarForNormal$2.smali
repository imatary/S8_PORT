.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;
.super Ljava/lang/Object;
.source "PhotoSplitActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;->val$albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method
