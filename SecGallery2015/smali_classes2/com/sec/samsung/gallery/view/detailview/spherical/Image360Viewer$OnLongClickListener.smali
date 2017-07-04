.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2000(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2102(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$OnLongClickListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$2302(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)Z

    goto :goto_0
.end method
