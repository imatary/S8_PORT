.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showRotateSelfMotionPanoramaDialog(ILcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

.field final synthetic val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$rotateAngle:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$rotateAngle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x10000000

    invoke-virtual {v4, v6, v7, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->setSubAttribute(JZ)V

    const-string/jumbo v4, "Wide_Selfie_Motion_MP4_000"

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "Wide_Selfie_Motion_Info"

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_data=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "sef_file_type"

    const/16 v5, 0x970

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "sef_file_sub_type"

    const-string/jumbo v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$27700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$rotateAngle:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$41;->val$mediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ILcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
