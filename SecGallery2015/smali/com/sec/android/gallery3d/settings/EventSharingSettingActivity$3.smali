.class Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$3;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$3;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "mSwitchView onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
