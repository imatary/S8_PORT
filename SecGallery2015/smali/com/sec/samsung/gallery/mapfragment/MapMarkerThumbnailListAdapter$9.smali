.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

.field final synthetic val$clusterName:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->val$clusterName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->val$clusterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLocationPOI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_logo:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_logo:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->val$clusterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->val$size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
