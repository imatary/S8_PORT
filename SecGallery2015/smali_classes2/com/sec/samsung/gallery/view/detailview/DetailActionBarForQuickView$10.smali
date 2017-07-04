.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;
.super Ljava/lang/Object;
.source "DetailActionBarForQuickView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->onCreateOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$1100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;ZZI)V

    return-void
.end method
