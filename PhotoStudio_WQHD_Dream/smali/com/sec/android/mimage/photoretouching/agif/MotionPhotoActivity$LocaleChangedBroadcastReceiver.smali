.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$LocaleChangedBroadcastReceiver;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->isSpeedSubMenuShown:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
