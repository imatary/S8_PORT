.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$subAttach:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->val$subAttach:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->disableFocusAll(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6600(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->val$subAttach:Landroid/view/View;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->removeAttachSheet(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6700(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$42;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedImge(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6800(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
