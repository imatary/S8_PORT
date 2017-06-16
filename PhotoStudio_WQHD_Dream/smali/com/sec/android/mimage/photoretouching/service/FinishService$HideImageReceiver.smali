.class final Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FinishService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/service/FinishService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideImageReceiver"
.end annotation


# static fields
.field private static final ACTION_HIDE_IMAGE:Ljava/lang/String; = "hide_image"

.field private static final ACTION_SHOW_IMAGE:Ljava/lang/String; = "show_image"

.field private static final ACTION_SHOW_IMAGE_WITH_ANIMATION:Ljava/lang/String; = "show_image_with_animation"


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/service/FinishService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mQuickView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$100(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$300(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mBlurBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "show_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v1, "show_image_with_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const-string v2, "duration"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$902(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v1, "hide_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    const-string v2, "duration"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mAnimationDuration:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$902(Lcom/sec/android/mimage/photoretouching/service/FinishService;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/service/FinishService$HideImageReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/service/FinishService;

    # getter for: Lcom/sec/android/mimage/photoretouching/service/FinishService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/service/FinishService;->access$1400(Lcom/sec/android/mimage/photoretouching/service/FinishService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
