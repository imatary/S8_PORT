.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->initialSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "switchContainer onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$000(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Z

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
