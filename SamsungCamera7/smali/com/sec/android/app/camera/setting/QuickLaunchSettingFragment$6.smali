.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;
.super Ljava/lang/Object;
.source "QuickLaunchSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->darkScreenTurnOffPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "QUICKLAUNCH_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lcd_curtain"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double_tab_launch"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
