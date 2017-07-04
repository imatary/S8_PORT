.class Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;
.super Ljava/lang/Thread;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectFaceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/CropView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "face-detect"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateFaces()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$4400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$DetectFaceTask;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->setVisibility(I)V

    return-void
.end method
