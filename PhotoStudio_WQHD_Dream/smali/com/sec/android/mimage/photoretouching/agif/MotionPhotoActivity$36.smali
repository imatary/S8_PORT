.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addEmptyThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$b:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->val$b:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->val$b:Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->addButtonView(Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mButtonControlManager:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setButtonsPos()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$36;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->index:I

    return-void
.end method
