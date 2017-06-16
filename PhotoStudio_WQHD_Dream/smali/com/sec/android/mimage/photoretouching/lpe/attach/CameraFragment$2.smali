.class Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$2;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->showHelpCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/attach/CameraFragment;->hideHelpCamera()V

    return-void
.end method
