.class Lcom/sec/android/gallery3d/app/GalleryActivity$4;
.super Landroid/database/ContentObserver;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;->registerFaceRecommendationObserver(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const-string/jumbo v0, "reload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "auto recommend end, time cost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mAutoRecommendTime:J
    invoke-static {v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$200(Lcom/sec/android/gallery3d/app/GalleryActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$300(Lcom/sec/android/gallery3d/app/GalleryActivity;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$300(Lcom/sec/android/gallery3d/app/GalleryActivity;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$4;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->nFaceRecommendationObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$302(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
