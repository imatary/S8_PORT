.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0399

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    return-void
.end method
