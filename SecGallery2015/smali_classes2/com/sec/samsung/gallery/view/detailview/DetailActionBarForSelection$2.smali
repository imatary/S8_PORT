.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;
.super Ljava/lang/Object;
.source "DetailActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

.field final synthetic val$numberOfItemsSelected:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0a02ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    invoke-static {v4, v5, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a03ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection$2;->val$numberOfItemsSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
