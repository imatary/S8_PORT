.class Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;
.super Ljava/lang/Object;
.source "HomeCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/HomeCropActivity;->initWideHomeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/CropView;->getScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-set1(Lcom/sec/android/wallpapercropper2/HomeCropActivity;F)F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/CropView;->getCurrentCenter()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v3}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRotation()I

    move-result v3

    aget v4, v0, v6

    aget v0, v0, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/util/Utils;->convertPoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setCenter(FF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iput-boolean v5, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideWallpaperApplied:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-virtual {v1, v6, v6}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getScaleValue(ZZ)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v5}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->setGLSurfaceViewGONE()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideHomeContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
