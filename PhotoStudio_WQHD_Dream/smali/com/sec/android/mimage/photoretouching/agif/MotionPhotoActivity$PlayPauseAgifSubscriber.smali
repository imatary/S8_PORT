.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayPauseAgifSubscriber"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pauseAgif()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    return-void
.end method

.method public playPauseAgif(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playPauseAgif(I)V

    return-void
.end method

.method public playPauseAgif(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->deSelectAllThumbnails(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->playPauseAgif(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$PlayPauseAgifSubscriber;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->updateThumbnailAfterTouch(I)V

    return-void
.end method
