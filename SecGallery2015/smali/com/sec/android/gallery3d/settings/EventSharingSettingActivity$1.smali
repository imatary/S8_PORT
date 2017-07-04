.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoryShareOnOff(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$000(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-static {v1, p1, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$100(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;ZZ)V

    return-void
.end method
