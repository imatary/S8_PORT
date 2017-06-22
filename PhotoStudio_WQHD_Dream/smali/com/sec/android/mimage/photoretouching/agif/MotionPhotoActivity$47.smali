.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mExecutorState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$5400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string v1, "AnimationEditor"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$47;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->executorHandle(Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method
