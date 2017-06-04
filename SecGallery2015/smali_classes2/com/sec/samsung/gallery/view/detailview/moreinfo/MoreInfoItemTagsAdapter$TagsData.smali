.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;
.super Ljava/lang/Object;
.source "MoreInfoItemTagsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagsData"
.end annotation


# instance fields
.field private final noTag:Z

.field private final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;->text:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;->noTag:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTagsAdapter$TagsData;->noTag:Z

    return v0
.end method
