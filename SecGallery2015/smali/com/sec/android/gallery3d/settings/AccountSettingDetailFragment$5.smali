.class Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;
.super Ljava/lang/Object;
.source "AccountSettingDetailFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;->this$0:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleImageAnalysis(Landroid/preference/Preference;Z)V
    invoke-static {v0, p1, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->access$400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Landroid/preference/Preference;Z)V

    const/4 v0, 0x1

    return v0
.end method
