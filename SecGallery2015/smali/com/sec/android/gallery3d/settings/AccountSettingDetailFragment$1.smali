.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingDetailFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudScreen()Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$000(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Z

    move-result v0

    return v0
.end method
