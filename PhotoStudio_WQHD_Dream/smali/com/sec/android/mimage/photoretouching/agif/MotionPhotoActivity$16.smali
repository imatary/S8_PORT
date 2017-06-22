.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->onCreateInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getImageCount()I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "846"

    const-string v1, "8552"

    const-string v2, "Play"

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventHaveValueSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSwapAnimationRunning()Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateSaveButtonBackground(Z)V
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z
    invoke-static {v2, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    move-result v2

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->updateFocusAttribute(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$16;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mMotionWidget:Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/GLMotionWidget;->play()V

    goto :goto_0
.end method
