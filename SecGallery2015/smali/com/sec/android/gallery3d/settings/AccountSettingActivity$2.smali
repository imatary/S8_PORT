.class Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;
.super Ljava/lang/Object;
.source "AccountSettingActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->access$002(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isMultiWindow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->access$100(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V

    :cond_0
    return-void
.end method
