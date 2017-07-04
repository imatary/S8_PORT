.class Lcom/sec/android/gallery3d/ui/CropView$3;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/CropView;->initZoomInOutButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/CropView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$3;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$3;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$3;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$3;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->onScale(FFF)Z

    return-void
.end method
