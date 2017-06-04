.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$1;
.super Ljava/lang/Object;
.source "MoreInfoItemTags.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTags;->invalidate()V

    return-void
.end method
