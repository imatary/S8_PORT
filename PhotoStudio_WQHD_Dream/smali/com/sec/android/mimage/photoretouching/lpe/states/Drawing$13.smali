.class Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->newSpenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoom(FFF)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1c2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;F)F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;F)F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;J)J

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0, p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;F)F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mSpenView:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->setZoom(FFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mZoomRatio:F
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;)F

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevZoomRatio:F
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;F)F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing$13;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->mPrevTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Drawing;J)J

    goto :goto_1
.end method
