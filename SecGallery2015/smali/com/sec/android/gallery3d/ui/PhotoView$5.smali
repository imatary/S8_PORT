.class Lcom/sec/android/gallery3d/ui/PhotoView$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->initVisionIntelligenceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2000(Lcom/sec/android/gallery3d/ui/PhotoView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getIsObjectSearch()Z

    move-result v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2000(Lcom/sec/android/gallery3d/ui/PhotoView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->val$index:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getObjectRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mVisionIntelligenceIconViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2000(Lcom/sec/android/gallery3d/ui/PhotoView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->val$index:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VisionIntelligenceIconView;->getObjectTagData()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mCurMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->getObjectRect(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2200(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onVisionIntelligenceIconClick(ZLandroid/graphics/RectF;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
