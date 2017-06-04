.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;
.super Ljava/lang/Object;
.source "TimeViewActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001b

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$200(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$1;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method
