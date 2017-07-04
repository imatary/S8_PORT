.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;
.super Ljava/lang/Object;
.source "DetailActionBarSkeleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

.field final synthetic val$itemName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;->val$itemName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f12006e

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton$2;->val$itemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method
