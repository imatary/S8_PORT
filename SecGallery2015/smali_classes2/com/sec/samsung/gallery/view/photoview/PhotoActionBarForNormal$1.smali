.class Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$1;
.super Ljava/lang/Object;
.source "PhotoActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->setActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v2, :cond_0

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method
