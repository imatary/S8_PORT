.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33$1;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->doInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33$1;->this$1:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$33;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->showNoImageToast()V

    return-void
.end method
