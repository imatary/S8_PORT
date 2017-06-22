.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->onScrollFocusItem()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->pauseAgif()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$500(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->didUserScroll(Z)V

    :cond_0
    return-void
.end method
