.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;
.super Ljava/lang/Object;
.source "MoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field public final icon:I

.field public final layout:I

.field public final title:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->layout:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->icon:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;->title:I

    return-void
.end method
