.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewModeSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->mViewModeLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    const/4 v2, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->refreshActionBarMessages(Z)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V

    invoke-static {}, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->values()[Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    aget-object v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$ViewModeSelectionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->changeViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2500(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V

    goto :goto_0
.end method
