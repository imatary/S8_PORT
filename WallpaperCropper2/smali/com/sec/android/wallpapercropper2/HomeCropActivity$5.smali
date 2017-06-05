.class Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;
.super Ljava/lang/Object;
.source "HomeCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/HomeCropActivity;->handleWideHomeCheckBox()V
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

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideWallpaperApplied:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideHomeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get3(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    new-instance v1, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-set2(Lcom/sec/android/wallpapercropper2/HomeCropActivity;Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;)Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get3(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/wallpapercropper2/CropView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setIsWideHome(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-wrap0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->setGLSurfaceViewVISIBLE()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setZOrderOnTop(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iput-boolean v5, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideWallpaperApplied:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iput-object v1, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get1(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get1(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/CropView;->setCenter(FF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->-get2(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLockTouchEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setLockTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/HomeCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    goto :goto_0
.end method
