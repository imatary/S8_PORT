.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;
.super Ljava/lang/Object;
.source "DetailActionBarSkeleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->initDisplayOptions()V

    return-void
.end method
