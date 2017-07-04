.class Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;
.super Ljava/lang/Object;
.source "Image360Viewer.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericMotionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;-><init>(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer$GenericMotionListener;->this$0:Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;->access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/Image360Viewer;Z)V

    return v1
.end method
