.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;
.super Ljava/lang/Object;
.source "AccountSettingDetailFragment.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$600(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method
