.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    invoke-static {v2}, Lcom/android/gallery3d/util/GSIMLogUtil;->getGSIMFeature(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageType:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v4, v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v4, v4, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mImageLocationType:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v5, v5, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v5, v5, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/GSIMLogUtil;->getGSIMExtraValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/gallery3d/util/GSIMLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mWallpaperType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTiltEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "MTEF"

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/util/GSIMLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDestroyStart:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getCompleteToast()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "dualMode"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_dual_mode"

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$6;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setResult(I)V

    goto :goto_1
.end method
