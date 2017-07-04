.class Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "SlideShowSettingPreferenceActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->access$002(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;Z)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->access$100(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V

    :cond_0
    return-void
.end method
