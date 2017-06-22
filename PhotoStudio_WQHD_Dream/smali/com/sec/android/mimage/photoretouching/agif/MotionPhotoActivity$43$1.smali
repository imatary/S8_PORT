.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isImagesLoading:Z
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v3

    if-gt v3, v0, :cond_1

    :goto_0
    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonForSingleImage(Z)V
    invoke-static {v2, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonInvisible()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$7100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$43;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->setPlaybuttonVisible()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$2100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    goto :goto_1
.end method
