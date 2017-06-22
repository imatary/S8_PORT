.class Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;
.super Ljava/lang/Object;
.source "AttachSheetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->onPictureTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

.field final synthetic val$rclFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;->val$rclFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;->val$rclFragment:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->setExpansion(Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment;->changeMode(Z)V

    return-void
.end method
