.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$900(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1100(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->curActivityMode:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;->PLAY_MODE:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$ACTIVITY_MODE;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideSubMenu()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isDirectionSubMenuShown:Z
    invoke-static {v4, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1102(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isAspectRatioSubMenuShown:Z
    invoke-static {v3, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$902(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    move-result v1

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z
    invoke-static {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1002(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)Z

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->editPopUpOpen:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$13;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showHideEditSubmenu()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
