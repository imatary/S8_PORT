.class Lcom/sec/android/wallpapercropper2/CropView$1;
.super Landroid/os/Handler;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/CropView;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x6

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v0, v5}, Lcom/sec/android/wallpapercropper2/CropView;->-set0(Lcom/sec/android/wallpapercropper2/CropView;I)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->-set0(Lcom/sec/android/wallpapercropper2/CropView;I)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/CropView;->-get2(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v2

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/CropView;->-get2(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    const v2, 0x3b031271    # 0.0020000006f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->-set1(Lcom/sec/android/wallpapercropper2/CropView;F)F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/CropView;->-get0(Lcom/sec/android/wallpapercropper2/CropView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/CropView;->-get2(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/CropView;->-get2(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    const v2, 0x3aee5013

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->-set1(Lcom/sec/android/wallpapercropper2/CropView;F)F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/CropView;->-get0(Lcom/sec/android/wallpapercropper2/CropView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView$1;->this$0:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/CropView;->-get1(Lcom/sec/android/wallpapercropper2/CropView;)F

    move-result v1

    div-float/2addr v1, v3

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
