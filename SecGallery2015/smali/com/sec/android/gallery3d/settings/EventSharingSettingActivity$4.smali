.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$4;
.super Ljava/lang/Object;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$4;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$4;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    # invokes: Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleStorySharing(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->access$300(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)V

    return-void
.end method
