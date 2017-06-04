.class Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;
.super Ljava/lang/Object;
.source "SlideShowSettingPreferenceActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    # setter for: Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->mIsMultiWindow:Z
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->access$002(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setMarginForTabletModels()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->access$100(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V

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
