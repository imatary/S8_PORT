.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# instance fields
.field private final horizontalSpacing:I

.field private itemHeight:I

.field private final verticalSpacing:I


# direct methods
.method private constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->horizontalSpacing:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->verticalSpacing:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->itemHeight:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;-><init>(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->itemHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->itemHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->verticalSpacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->horizontalSpacing:I

    return v0
.end method
