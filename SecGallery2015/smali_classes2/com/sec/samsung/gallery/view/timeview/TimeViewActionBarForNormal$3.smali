.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;
.super Ljava/lang/Object;
.source "TimeViewActionBarForNormal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->setTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

.field final synthetic val$albumName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->val$albumName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$1400(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->val$albumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$1500(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;->access$1600(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;)Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TimeViwActnBarForNorml"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
