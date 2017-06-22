.class Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;
.super Ljava/lang/Object;
.source "GLMotionWidget.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper$OnApplyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$200(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$200(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->getTranslateX()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$200(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->getTranslateY()F

    move-result v3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAdapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsPlayMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$300(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateSelectedRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mAgifPinchHelper:Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$200(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mBitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$400(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    iget-object v6, v6, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->mDisplayRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->currentRatio:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->access$300(Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;)Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->updateTextureRect(Landroid/graphics/RectF;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ASPECT_RATIO;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/agif/AgifPinchHelper;->updateViewRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method
