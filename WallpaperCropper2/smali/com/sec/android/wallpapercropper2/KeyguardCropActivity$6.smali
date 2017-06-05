.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->cropImageAndSetWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iput-object v5, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCropTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setLockScreenSettingAndBroadCast()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wallpaper_tilt_status"

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "Cropper2_KeyguardAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Write Settings.System : WALLPAPER_TILT_STATUS = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v4, v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v0, "Cropper2_KeyguardAct"

    const-string/jumbo v1, "CropTask : RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setResult(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-wrap1(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get11(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get11(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setLockScreenSettingAndBroadCast()V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mFromKeyguardWallpaperUpdator:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const-string/jumbo v4, "com.samsung.cmh"

    invoke-static {v1, v4}, Lcom/android/gallery3d/util/Utils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$UpdateUsedAsWallpaperTask;

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {v1, v4, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$UpdateUsedAsWallpaperTask;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$UpdateUsedAsWallpaperTask;)V

    new-array v4, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$UpdateUsedAsWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    :cond_7
    move v0, v3

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto/16 :goto_2
.end method
