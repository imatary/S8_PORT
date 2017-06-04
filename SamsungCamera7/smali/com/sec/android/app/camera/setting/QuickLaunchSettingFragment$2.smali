.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;
.super Ljava/lang/Object;
.source "QuickLaunchSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

.field final synthetic val$switchView:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Landroid/widget/Switch;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;->val$switchView:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;->val$switchView:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;->val$switchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
