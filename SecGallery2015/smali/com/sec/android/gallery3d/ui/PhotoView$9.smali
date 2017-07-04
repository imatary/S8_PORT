.class Lcom/sec/android/gallery3d/ui/PhotoView$9;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->initZoomInOutButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$9;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$9;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$9;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2400(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$9;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2500(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$9;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2300(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    return-void
.end method
