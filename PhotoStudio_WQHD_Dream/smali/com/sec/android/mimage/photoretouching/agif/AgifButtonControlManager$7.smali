.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

.field final synthetic val$myButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

.field final synthetic val$removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->val$myButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->val$removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->val$myButton:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$7;->val$removeCommand:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->removeThumbnailButton(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Removecommand;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
