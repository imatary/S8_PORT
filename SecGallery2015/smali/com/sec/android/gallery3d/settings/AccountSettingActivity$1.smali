.class Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;
.super Ljava/lang/Object;
.source "AccountSettingActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setStateChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->access$002(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->access$100(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V

    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method
