.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$5;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$5;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$5;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->dismissAllDialog()V
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$500(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    return-void
.end method
